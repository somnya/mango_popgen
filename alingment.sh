rm -r bam/
mkdir bam

for sample in fastq/*.fastq
do

name=$(basename $sample .fastq)
echo "WORKING WITH ${name}"

bwa mem mango_genome.fasta fastq/${name}.fastq | samtools view -b | samtools sort > bam/${name}.bam

echo "${sample} DONE"
echo "_____________________________________________________________________________________________________"

done