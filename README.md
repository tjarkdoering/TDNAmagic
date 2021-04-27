# TDNAmagic

Shell script to complement TDNAscan in some minor way. To be more precise, it allows you to call [TDNAscan](https://github.com/noble-research-institute/TDNAscan) from the working directory you are in and receive the results into the very same one. Without the fuss of cleaning up your TDNAscan directory.

## Usage

1. Make sure your TDNAscan is working. Invoke `python tdnascan.py --version` from the TDNAscan directory or something.
2. Move the script to any of your `bin` path (so you can invoke it from anywhere) and make it executable. Preferably of any of the user accessible ones.
3. Open the script in an editor of your choice and add the path to your TDNAscan dir and check the contents that it doesn't do anything malicious.
4. Navigate to your working directory (containing your the two paired read files, the T-DNA sequence file and the genome sequence file).
4. Call the script:
```
$ tdnamagic.sh -1 forward.fq -2 reverse.fq -t t-dna.fa -g ref_genome.fa
```

## Troubles using this?

Feel free to contact me or any of your resident bioinformatician :wink:
