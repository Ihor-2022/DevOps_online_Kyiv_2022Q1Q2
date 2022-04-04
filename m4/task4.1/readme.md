 # The progress of the home task 4.1
    # Part 1
 
 ## 1 
Logged in to the system as root (or sudo-er)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/001.png)

 ## 2
Used the passwd command to change the password. Examined the basic parameters of the command. The passwd command makes changes into the file /etc/shadow
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/002.png)
 
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/003.png)

 ## 3
Determined the users registered in the system, as well as which commands do they execute. An IP adress can also be gleaned from the command execution via -i parameter

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/004.png)
 
 ## 4
Changed personal information about myself

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/005.png)

 ## 5
Became familiar with the Linux help system and the man and info commands. Got help on the previously discussed commands, defined and described two keys for these commands with examples as follows

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/006.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/007.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/008.png)

 ## 6
Explored the more and less commands using the help system 

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/009.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/010.png)

Viewed the contents of files .bash* using commands

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/011.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/012.png)

 ## 7 v.1 
Described in plans that I'm working on laboratory work 1

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/013.png)

 ## 7 v.2 

Determined the last logon time for all users using finger command

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/014.png)

## 8

Listed the contents of the home directory using the ls command, defined its files and directories

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/015.png)

    # Part 2

 ## 1
Examined the tree command. Mastered the technique of applying a template, displayed all files that contain a character c,

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/015_1.png)

and listed subdirectories of the root directory up to and including the second nesting level

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/016.png)

 ## 2 

Command "file" can be used to determine the type of file (for example, text or binary) as follows

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/018.png)

 ## 3 
Mastered the skills of navigating the file system using relative and absolute paths. Pure "cd" commmand allows to get home directory from anywhere in the filesystem and "cd .." command lets get an upper directory

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/020.png)

 ## 4
Became familiar with the various options for the ls command. Below are some examples of listing directories using different keys. Key -l switches the output into list view and key -a reflects all hidden files

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/021.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/022.png)

 ## 5 
Performed the following sequence of operations:
- created a subdirectory in the home directory;
- in this subdirectory created a file containing information about directories located in the root directory (using I/O redirection operations);
- viewed the created file;
- copied the created file to the home directory;
- deleted the previously created subdirectory with the file requesting removal;
- deleted the file copied to the home directory.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/023.png)

## 6 
Performed the following sequence of operations:
- created a subdirectory test in the home directory;
- copied the .bash_history file to this directory while changing its name to labwork2;
- created a hard and soft link to the labwork2 file in the test subdirectory;
A symbolic or soft link is an actual link to the original file, whereas a hard link is a mirror copy of the original file. If you delete the original file, the soft link has no value, because it points to a non-existent file. But in the case of hard link, it is entirely opposite because a hard link is just another name for the original file.
- changed the data by opening a symbolic link. Changes took effect at at the original .bash_history file;
- renamed the hard link file to hard_lnk_labwork2;
- renamed the soft link file to symb_lnk_labwork2 file;
- then deleted the labwork2 and the symlink became not valid while the inode for hard_lnk_labwork2 changed at the same time

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/024.png)

 ## 7
Using the locate utility, found all files that contain the squid and traceroute sequence

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/025.png)

 ## 8
Determined which partitions are mounted in the system, as well as the types of these partitions

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/026.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/027.png)

 ## 9
Counted the number of lines containing a given sequence of characters in a given file

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/028.png)

 ## 10
Using the find command, found all files in the /etc directory containing the host character sequence

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/029.png)

 ## 11
Listed all objects in /etc that contain the ss character sequence and also duplicated a similar command using a bunch of grep

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/030.png)

 ## 12
Organized a screen-by-screen print of the contents of the /etc directory via stream redirection operations

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/031.png)

 ## 13
The most frequently used types of devices are: /dev/console (monitor, keyboard), dev/ hd (IDE hard drives); /dev/sd (SCSI hard drives); /dev/fd (floppy); /dev/tty (custom consoles); /dev/pty (pseudo terminal); /dev/ttS (serial COM); /dev/null ("black hole")
They can be determined via exploring /dev

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/032.png)

 ## 14
Along with ordinary files and directories, files from the point of view of Linux are also:
- files of physical devices (as described above)
- named pipes (ls -l | grep ^p) 
- sockets (find / -type s)
- symbolic links (ls -l | grep ^l)
- block files (ls -l | grep ^b)
- character files (ls -l | grep ^c)

 ## 15
And listed the first 5 directory files that were recently accessed in the /etc directory

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.1/033.png)
