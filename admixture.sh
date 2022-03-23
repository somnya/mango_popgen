rm -r admixture_files/
mkdir admixture_files
cd admixture_files/

for K in {1..20}
do
admixture --cv plink/admix.bed $K > ${K}.out
done

grep -h "CV" *.out | sed 's/CV error (K=//g' | sed 's/)://g' | sort -k 1 -n > error.txt