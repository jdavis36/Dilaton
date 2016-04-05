#! /bin/tcsh

#foreach var1 (6)
cd pph1
# cd Cards
foreach var1 (10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125 130 135 140 145 150)
cd Cards
sed '19 s/.*/   25 '$var1'e+00 # MH/' <param_card.dat > param_card1.dat
rm param_card.dat
mv param_card1.dat param_card.dat
sed '22 s/.*/ mh is '$var1'     = run_tag ! name of the run/' <run_card.dat >run_card1.dat
rm run_card.dat
mv run_card1.dat run_card.dat 
cd ..
echo "0" | ./bin/generate_events
sleep 1m
end

