 # The progress of the home task 6

 ## A 
This script if started without parameters, it will display a list of possible keys and their description

The --all key displays the IP addresses and symbolic names of all hosts in the current subnet

The --target key displays a list of open system TCP ports on a desired target machine

The code of each of the subtasks was placed in a separate function

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/001.png)

Perfomance of the script:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/002.png)

 ## B

 This script shows the following info of an Apache log:

 - From which ip were the most requests?
 - What is the most requested page?
 - How many requests were there from each ip?
 - What non-existent pages were clients referred to?
 - What time did site get the most requests?
 - What search bots have accessed the site? (UA + IP)

The code of the script:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/003.png)

Perfomance of the script:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/004.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/005.png)

 ## C

This script backups data taking the following data as parameters:
 - Path to the syncing directory.
 - The path to the directory where the copies of the files will be stored

In case of adding new or deleting old files, the script adds a corresponding entry to the log file indicating the time, type of operation and file name.

The code of the script:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/006.png)

Perfomance of the script:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/007.png)

Some minor changes are to be made to let the script run via crontab. More particularly, source and destination paths are to be set statically as shown below. And a crontab record is to be added correspondingly via command crontab -e

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/008.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/009.png)

After those changes take effect, the script runs automatically every first minute

And all the changes are being recorded into the logfile where, for example, "deleting" means that a file was deleted from the backup and ">f++++++" means a new file was added into the backup, etc.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m6/010.png)

And three files with scripts are also added to the repository

Thank you!