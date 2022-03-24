rm -r fastq/
mkdir fastq
cd fastq/
for r in $(cut -f4 ../metadata_sra.tsv)
do
echo "DOWNLOADING $r"
fasterq-dump $r
done