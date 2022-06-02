#This is the example script (also contained in the README.txt) to download all files (about 900 GB!). Exclude options by removing time intervals or simulations if a reduced set is required.

wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/namelist.input?ticket=tfKfvC272uyo1WC
wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/README.txt?ticket=tfKfvC272uyo1WC


time="00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24"
simulations="control_ref_200m ENS_01 ENS_02 ENS_03 ENS_04 ENS_05 ENS_06 ENS_07 ENS_08 ENS_09"

for s in $simulations
do 
   for t in $time
   do 
      wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/${s}/${s}_T${t}.nc?ticket=tfKfvC272uyo1WC
   done
done


###For questions: reach out to egroot@uni-mainz.de; (and if not possible) tosth@uni-mainz.de 
