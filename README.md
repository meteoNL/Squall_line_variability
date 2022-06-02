# Squall_line_variability

This README describes the dataset contained in the download of Groot & Tost, squall line variability study titled 
"Evolution of squall line variability and error growth in an ensemble of LES"

Contained are:
- namelist and readme files
- control simulation
- 9 ensemble members ENS_01 to ENS_09
with the essential output data for each simulation in the netCDF of each simulation: u, v, and w winds (interpolated to grids of other vars), potential tmeperature, water vapor content, all cloud and hydrometeor contents and for ENS_03 and control_ref also PT data. 

Output for each output time is contained in a separate file, numbered T00 (initial conditions) to T24 (t = 120 minutes) at 5 minute intervals. For each simulation, the output is contained in one folder with the corresponding name.

A namelist file with the settings to produce the output of the control simulations is also provided. Note that our model version had additional wind profiles and namelist parameters (see the comments there). 


Script lines for a download.sh script to get ALL the data (about 900 GB!):
########## Beginning of example script ##########


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


########## End of example script ##########



Getting the data:
One can use wget or access the URL in any browser, e.g. Mozilla Firefox or Google Chrome.
- The namelist file is downloaded with this link: wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/namelist.input?ticket=tfKfvC272uyo1WC
- The README file (this file!) is downloaded with this link: wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/README.txt?ticket=tfKfvC272uyo1WC
- The output of ensemble member [m] (1-9) is downloaded with the following link (any output time [n] on the inclusive interval 00-24): wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/ENS_0[m]/ENS_0[m]_T[n].nc?ticket=tfKfvC272uyo1WC

For the control, replace "ENS_0<m>" by control_ref_200m.




More extensive list of examples:
- The output of the control run is downloaded with the following link (initial conditions): wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/control_ref_200m/control_ref_200m_T00.nc?ticket=tfKfvC272uyo1WC
- The output of the control run is downloaded with the following link (any output time[n] on the inclusive interval 00-24): wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/control_ref_200m/control_ref_200m_T[n].nc?ticket=tfKfvC272uyo1WC
- The output of ENS_01 is downloaded with the following link (initial conditions): wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/ENS_01/ENS_01_T00.nc?ticket=tfKfvC272uyo1WC
- The output of ENS_01 is downloaded with the following link (any output time [n] on the inclusive interval 00-24): wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/ENS_01/ENS_01_T[n].nc?ticket=tfKfvC272uyo1WC
- The output of ensemble member [m] (1-9) is downloaded with the following link (initial conditions): wget https://irods-web.zdv.uni-mainz.de/irods-rest/rest/fileContents/zdv/project/m2_jgu-w2w/w2w-a1/EG_HT_2022_squall_line_var/ENS_0[m]/ENS_0[m]_T00.nc?ticket=tfKfvC272uyo1WC








The wind profile depth (in meters) used to produce the ensemble was the following: 
2500.0, 2539.98189467, 2399.34195376, 2452.91920933, 2521.89798923, 2373.26419647, 2393.71515698,  2390.61641356, 2486.8184993, 2539.82475814




For questions: reach out to egroot@uni-mainz.de; (and if not possible) tosth@uni-mainz.de 
