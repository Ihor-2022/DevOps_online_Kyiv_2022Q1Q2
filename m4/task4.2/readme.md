 # The progress of the home task 4.2
 
 ## 1 
/etc/passwd is a plain text-based database that contains information for all user accounts on the system. It is owned by root and has 644 permissions . The file can only be modified by root or users with sudo privileges and readable by all system users.
Usually, the first line describes the root user, followed by the system and normal user accounts. New entries are appended at the end of the file.
Each line of the /etc/passwd file contains seven comma-separated fields icluding GID and UID:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/001.png)

Real users have a home directory pointed at the feield 6 while pseudo-users can easily be defined as they have no home directory and also field 7 for them contains "nologin" or "false" mark instead of the path to the user’s login shell.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/002.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/003.png)

/etc/group Defines the default system group entries for system groups that support some system-wide tasks, such as printing, network administration, or electronic mail. Many of these groups have corresponding entries in the /etc/passwd file.
Each entry in the /etc/group file contains four fields. The following is the format for an entry:
groupname:  group-password:   GID:  username-list

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/004.png)

 ## 2
UID is a unique identifier which marks that a particular record as unique from any other record.
By default, Linux systems automatically assign UIDs and GIDs to new user accounts in numerical order starting at 1000. In other words, if you create a new user account during installation, it will have UID = 1000 and GID = 1000 while the superuser (root) has UID 0 (zero).

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/005.png)

For both UIDs and GIDs, the range 0-49 is reserved for core OS allocations, and the range 50-999 can be allocated by package porters for use by specific software packages in the files ports/UIDs and ports/GIDs.

UIDs can be defined by commands id (for the user now logged in), id user_name (for any user by his name) or via exploring file /etc/passwd:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/006.png)

 ## 3
Groups in Linux are defined by GIDs (group IDs). Just like with UIDs, the first 100 GIDs are usually reserved for system use. The GID of 0 corresponds to the root group and the GID of 100 usually represents the users group. GIDs are stored in the /etc/group file but also can be retrieved from /etc/passwd file as described above.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/007.png)

 ## 4
Belonging of a user to the specific group can be defined either via id command or by exploring /etc/group file (also via /etc/passwd file).

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/008.png)

 ## 5
A new user can be added to the system via commands useradd (a low-level Linux command) and adduser.
Adduser works interactivly as a high-level utility guiding through a user-creating procedure.
A pure useradd command just creates a new user where a password needs to be created after via command passwd.
To achieve the same result via useradd as via adduser the following code should be run: 
sudo useradd -d /home/test_5 -m -s/bin/bash \
-c FullName,Phone,OtherInfo test_5 && passwd test

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/009.png)

 ## 6
How do I change the name (account name) of an existing user?

Answer:
Firstly you have to make it certain to exit from the account you are going to rename.
Then rename via usermod -l new_username old_username.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/010.png)

Note that nothing else is changed, particularly the user's home directory name.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/011.png)

 ## 7
What is skel_dir? What is its structure?

Answer:
Skel is derived from the "skeleton" because it contains basic structure of home directory. The /etc/skel directory contains files and directories that are automatically copied over to a new user when it is created from useradd command. This ensures that all the users get the same intial settings and environment.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/012.png)

Typically files included in /etc/skel are .rc files for shell initialization, but it is also possible include a public_html directory, a custom dircolors file, or anything else.

So, the /etc/skel directory is the directory used by useradd command to create the default settings in a new user's home directory.
The existing deault settings can be reviewed via /usr/sbin/useradd -D or cat /etc/default/useradd.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/013.png)

 ## 8 
How to remove a user from the system (including his mailbox)?

Answer: 
either via deluser user_name --remove-home or via userdel -r user_name.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/014.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/015.png)

 ## 9
What commands and keys should be used to lock and unlock a user account?

Answer:
1 - to LOCK
- passwd -l user_name
- usermod -L user_name
- usermod -L --expiredate 1970-01-02 user_name
- chage -E 1 username (the command sets the password's expiry date on the 1970-01-02)

2 - to UNLOCK
- passwd -u user_name
- usermod -U user_name
- usermod -U --expiredate '' user_name
- chage -E -1 username (removes expiry date for the password)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/016.png)

 ## 10
How to remove a user's password and provide him with a password-free login for subsequent password change?

Answer: 
command passwd -d user_name cancels the password for the user and allows him to log in without a password and change it himself

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/017.png)

 ## 11
Display the extended format of information about the directory, tell about the information columns displayed on the terminal.

Answer: Command ls -ld lists details about a directory and not its contents.
Columns display: permissions for the directory, quantity of files including hidden, the owner and group of the directory, dimension of the directory, date and time of its creation.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/018.png)

 ## 12
What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
Access rights exist for U (the first triplet for the owner of the file), G (the second triplet for the group) and O (the third triplet for the other or outsider).
There can be a full set or a partial set of the following rights in each triplet: r (read), w (write) and x (execute) where "x" for the directory permits to enter to it.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/019.png)

 ## 13
What is the sequence of defining the relationship between the file and the user?

Answer:
When a user (process) reffers to a file, the role is determined as follows:
If the UID of the file is the same as the UID of the process, the user is the owner of the file.
If the GID of the file matches the GID of any group the user belongs to, he is a member of the group to which the file belongs.
If neither the UID nor the GID of a file overlaps with the UID of the process and the list of groups that the user running it belongs to, then user is concerned an outsider.

 ## 14
What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.

Answer: 
Permissions can be changed using three commands:
chown (change owner), chgrp (changegroup) and chmod with extended parameter format: before the access part (before the "+" or " " sign), can list the roles "u", "g", "o" and "a" (all, which corresponds to ugo) for which access is being changed.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/020.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/021.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/022.png)

 ## 15
What is an example of octal representation of access rights? Describe the umask command.

Answer:
All twelve permissions attributes can be represented as bits of a binary number, equal to 1 if the attribute is set, and 0 if not. The order of the bits is as follows: sU | sG | t | rU | wU | xU | rG | wG | xG | rO | wO | xO |
where sU is SetUID , sG is SetGID , t is a t attribute (ls dl then the directory is displayed as a file), than three triples of access attributes.
umask command establishes the default access permissions when creating files and directories based on formula "666 - umask" for files and "777 - umask" for directories. The default umask preset is 002 which means that permissions for a new created file is 666 - 002 = 644 = rw-rw-r--
An octal format can be used for both umask and chmod commands as well as rwx format.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/023.png)

 ## 16
Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.

Answer:
Sticky Bit is mainly used on folders in order to avoid deletion of a folder and it’s content by other users though they have write permissions on the folder contents. If a Sticky bit is enabled on a folder, files in the folder can be deleted by their owner who created them or by the root user. No one else can delete other user's data from this folder (where sticky bit is set). This is a security measure to avoid deletion of critical folders and their content (sub folders and files), even though other users have full permissions.
Sticky Bit can be set either via chmod o+t or chmod +t (symbolic way) or chmod 1XXX (numeric way) where XXX - the rest permissions, e.g. 755.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.2/024.png)

When the SUID bit is set on an executable file, this means that the file will be executed with the same permissions as the owner of the executable file.
SUID can be set either via chmod u+s file_name (symbolic way) or chmod 4XXX (numeric way) where XXX - the rest permissions, e.g. 644
Command find / perm /4000 outputs all files with SUID set.
And SGID is similar to SUID. With the SGID bit set, any user executing the file will have same permissions as the group owner of the file.
Can be set via chmod g+s or chmod 2XXX commands.

 ## 17
What file attributes should be present in the command script?

Answer: 
The sha-bang (#!) at the head of a script tells the system that this file is a set of commands to be fed to the command interpreter indicated. This is actually a two-byte magic number, a special marker that designates a file type, or in this case an executable shell script. 
A path name follows the sha-bang. This is the path to the program that interprets the commands in the script, whether it is a shell, or a programming language, or a utility. This command interpreter then executes the commands in the script, starting at the top (the line following the sha-bang line), and ignoring comments.
Examples are:
- #!/bin/sh
- #!/bin/bash
- #!/usr/bin/perl
- #!/usr/bin/tcl
- #!/bin/sed -f
- #!/bin/awk -f
