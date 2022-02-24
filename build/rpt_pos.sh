#!/bin/bash
start_time=$(date "+%s")


for i in {1..2036}
do 
    ./naidetector /G4-e/RPT-posa/macros/Array_1/pos$i.mac
    hadd scoring_f.root  *.root
    root -q det_reader1.C
    mv NaIDetector_D1.dat NaIDetector_D1_pos$i.dat
    mv NaIDetector_D1_pos$i.dat /G4-e/RPT-posa/results/Array_1
    root -q det_reader2.C
    mv NaIDetector_D2.dat NaIDetector_D2_pos$i.dat
    mv NaIDetector_D2_pos$i.dat /G4-e/RPT-posa/results/Array_1
    root -q det_reader3.C
    mv NaIDetector_D3.dat NaIDetector_D3_pos$i.dat
    mv NaIDetector_D3_pos$i.dat /G4-e/RPT-posa/results/Array_1
    root -q det_reader4.C
    
    rm *.root
done


for i in {1..2036}
do 
    ./naidetector /G4-e/RPT-posa/macros/Array_2/pos$i.mac
    hadd scoring_f.root *.root
    root -q det_reader1.C
    mv NaIDetector_D1.dat NaIDetector_D1_pos$i.dat
    mv NaIDetector_D1_pos$i.dat /G4-e/RPT-posa/results/Array_2
    root -q det_reader2.C
    mv NaIDetector_D2.dat NaIDetector_D2_pos$i.dat
    mv NaIDetector_D2_pos$i.dat /G4-e/RPT-posa/results/Array_2
    root -q det_reader3.C
    mv NaIDetector_D3.dat NaIDetector_D3_pos$i.dat
    mv NaIDetector_D3_pos$i.dat /G4-e/RPT-posa/results/Array_2
    root -q det_reader4.C
    
    rm *.root
done

for i in {1..2036}
do 
    ./naidetector /G4-e/RPT-posa/macros/Array_3/pos$i.mac
    hadd scoring_f.root *.root
    root -q det_reader1.C
    mv NaIDetector_D1.dat NaIDetector_D1_pos$i.dat
    mv NaIDetector_D1_pos$i.dat /G4-e/RPT-posa/results/Array_3
    root -q det_reader2.C
    mv NaIDetector_D2.dat NaIDetector_D2_pos$i.dat
    mv NaIDetector_D2_pos$i.dat /G4-e/RPT-posa/results/Array_3
    root -q det_reader3.C
    mv NaIDetector_D3.dat NaIDetector_D3_pos$i.dat
    mv NaIDetector_D3_pos$i.dat /G4-e/RPT-posa/results/Array_3
    root -q det_reader4.C
    
    rm *.root
done


end_time=$(date "+%s")
s=60
let elapsed=($end_time-$start_time)/$s
echo "$elapsed minutes"
