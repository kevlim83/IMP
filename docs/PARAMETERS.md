# IMP configuration
We use a config file to pass variables to IMP engine.
The default parameters are visible in `src/config.imp.json`.
You could override some parameters via the file `conf/userconfig.imp.json`.

Please do not override parameters directly on `src/config.imp.json` as it may 
be overridden with the next IMP update.

Eventually you could pass a different location for the config file via an environment variable
if you are using snakemake, or via the IMP wrapper script option.



## TODO: document following parameters:
{
    "threads": 4,
    "memory_total_gb": 8,
    "memory_per_core_gb": 2,
    "tmp_dir": "tmp",
    "imp_src": "src",
    "raws": {
      "Metagenomics": "",
      "Metatranscriptomics": ""
    },
    "sample": "test",
    "outputdir": "/output",
    "db_path": "/databases",
    "preprocessing_filtering": true,
    "assembler": "idba",
    "trimmomatic": {
        "pkg_url": "https://webdav-r3lab.uni.lu/public/R3lab/IMP/Trimmomatic-Src-0.32.zip",
        "adapter": "TruSeq3",
        "leading": 20,
        "minlen": 40,
        "palindrome_clip_threshold": 30,
        "simple_clip_threshold": 10,
        "trailing": 20,
        "seed_mismatch": 2,
        "window_size": 1,
        "window_quality": 3,
        "strictness": 0.5,
        "target_length": 40,
        "jarfile": "/home/imp/lib/trimmomatic-0.32.jar"
    },
    "idba_ud": {
        "mink": 25,
        "maxk": 99,
        "step": 4,
        "perid": 0.98
    },
    "vizbin": {
        "dimension": 50,
        "kmer": 5,
        "size": 4,
        "theta": 0.5,
        "perp": 30,
        "cutoff": 1000,
        "jarfile": "/home/imp/lib/VizBin-dist.jar"
    },
    "human_filtering": {
        "filter": "hg38",
        "url": "http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz"
    },
    "sortmerna": {
        "pkg_url": "https://webdav-r3lab.uni.lu/public/R3lab/IMP/sortmerna.2.0.tgz",
        "scripts_path": "/home/imp/lib",

        "files": [
            "rfam-5.8s-database-id98",
            "silva-arc-16s-id95",
            "silva-bac-16s-id90",
            "silva-euk-18s-id95",
            "rfam-5s-database-id98",
            "silva-arc-23s-id98",
            "silva-bac-23s-id98",
            "silva-euk-28s-id98"
        ]
    },
    "prokka": {
        "pkg_url": "https://webdav-r3lab.uni.lu/public/R3lab/IMP/prokka-1.11.tar.gz",
        "databases": [
            "cm/Bacteria.i1i",
            "genus/Staphylococcus.phr",
            "hmm/CLUSTERS.hmm.h3f",
            "kingdom/Archaea/sprot.phr"
        ]
    },
    "kegg": {
        "db_ec2pthy": "http://rest.kegg.jp/link/ec/pathway",
        "db_hierarchy": "http://rest.kegg.jp/list/pathway"
    },

}
=======
if you are using Snakemake, or via the IMP wrapper script `-c` option.


## General parameters

* threads: Number of max threads to use.
* memory_total_gb: Some tools need to set the max memory they could use.
* memory_per_core_gb: Some tools need to set the max memory they could use per cores.
* tmp_dir: Path to a temporary directory.
* raws - Metagenomics: Path to the metagenomics paired files.
* raws - Metatranscriptomics: Path to the metatranscriptomics paired files.
* outputdir: Path to the output directory.
* db_path: Path to the databases.
* preprocessing_filtering: If you want to filter reads from a database. Can be true or false.
* assembler: The assembler to use. Could be idba or megahit.


## Example config file

    {
      "threads": 8,
      "output": /home/user/temp
      "conf/userconfig.imp.json": false
    }

IMP will take all default parameters and override those provided via this config file.


## Per tool/step parameters


### Trimmomatic

* pkg_url: Where to download the trimmomatic package to fetch the adapters databases.
* adapter: What adapter to use.

Following parameters are taken from the [Trimmomatic documentation](http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf):
* leading: Cut bases off the start of a read, if below a threshold quality.
* minlen: Specifies the minimum length of reads to be kept.
* palindrome_clip_threshold: Specifies how accurate the match between the two 'adapter ligated' reads must be for PE palindrome read alignment.
* simple_clip_threshold: Specifies how accurate the match between any adapter etc. sequence must be against a read.
* trailing: Specifies the minimum quality required to keep a base.
* seed_mismatch: specifies the maximum mismatch count which will still allow a full match to be performed.
* window_size: Specifies the number of bases to average across.
* window_quality: Specifies the average quality required.
* strictness: This value, which should be set between 0 and 1, specifies the
balance between preserving as much read length as possible vs. removal of incorrect
bases. A low value of this parameter favours longer reads, while a high value favours read correctness.
* target_length: This specifies the read length which is likely to allow the location of the read within the target sequence to be determined.
* jarfile: Path to the trimmomatic JAR file on your system. (You don't need to set it if you are using the docker container.)


### idba_ud
* mink: Minimum k value.
* maxk: Maximum k value.
* step: Increment of k-mer of each iteration.
* perid: Similarity for alignment.

### vizbin
* dimension: 50,
* kmer: 5,
* size: 4,
* theta: 0.5,
* perp: 30,
* cutoff: 1000
* jarfile: Path to the Vizbin JAR file on your system. (You don't need to set it if you are using the docker container.)


### human_filtering
* filter: Name of the filter.
* url: URL to download database.

### sortmerna
* pkg_url: Url to download sormerna databases from
* files: Databases to use and index.

### prokka
* pkg_url: Url to download prokka databases from
* databases: List of databases to use.


### kegg
* db_ec2pthy and  db_hierarchy: Url to downladod KEgg information from.
>>>>>>> 1df5ff1d0568f3aaa91dd3dea53188cb854dc1e1