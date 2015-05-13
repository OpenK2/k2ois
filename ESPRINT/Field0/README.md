#Code to add K2 Field 0 candidates to ExoFOP

###Input file: F00_ESPRINTcandidates_20150513.csv

Planet candidates found using the ESPRINT pipeline, described at
http://arxiv.org/abs/1504.04379
most of the candidates found by Roberto Sanchis-Ojeda (UC Berkeley) 
and Fei Dai (MIT)

The stellar parameters come mostly from the K2-TESS stellar properties catalog
http://arxiv.org/abs/1410.6379
and the stellar radii and masses are just a guess based on the temperature

The transit time and the orbital period come from a fit to individual
transits

The mass estimate is based on the Weiss & Marcy 2014 M-R relationships
http://arxiv.org/abs/1312.0936

The Target number is only for internal purposes

The comments may or may not be accurate

###Processing code: readdata.R

R script that reads the list of candidates and generates a table with
the information to be added to ExoFOP

###Final output: binary-status-20150513-001.txt

Final table with the planet candidates updated to ExoFOP

