 # The progress of the home task 4.3
    ## PART 1

 ## 1 
How many states could have a process in Linux?

Answer:
A process can have the following states:
- Running (R)
- Sleeping (S)
- Uninterruptable sleep (D)
- Stopped (T)
- Zombie (Z)

States can be retreved via commands top or htop

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/001.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/002.png)

 ## 2
Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/003.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/004.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/005.png)

 ## 3
What is a proc file system?

Answer:
The /proc/ directory (also called the proc file system) contains a hierarchy of special files which represent the current state of the kernel, allowing applications and users to peer into the kernel's view of the system.
The /proc/ directory contains a wealth of information detailing system hardware and any running processes. In addition, some of the files within /proc/ can be manipulated by users and applications to communicate configuration changes to the kernel.
Linux systems store all data as files. And the /proc/ directory contains another a special kind of file called a virtual file. As such, /proc/ is often referred to as a virtual file system.
Virtual files have unique qualities. Most of them are listed as zero bytes in size, but can still contain a large amount of information when viewed. In addition, most of the time and date stamps on virtual files reflect the current time and date, indicative of the fact they are constantly updated.
Virtual files such as /proc/interrupts, /proc/meminfo, /proc/mounts, and /proc/partitions provide an up-to-the-moment glimpse of the system's hardware. Others, like the /proc/filesystems file and the /proc/sys/ directory provide system configuration information and interfaces.
For organizational purposes, files containing information on a similar topic are grouped into virtual directories and sub-directories. Process directories contain information about each running process on the system.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/006.png)

 ## 4
Print information about the processor (its type, supported technologies, etc.).

Answer:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/007.png)

 ## 5
Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc.

Answer:
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/008.png)

 ## 6
How to define kernel processes and user processes?

Answer:
It is easy to recognize the kernel processes because they have a name that is between square brackets. Listing shows a list of a few processes as output of the command ps aux | head

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/009.png)

 ## 7
Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?

Answer: tho processes are running in the column S, and the rest are sleeping

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/010.png)

 ## 8
Display only the processes of a specific user.

Answer:
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/011.png)

 ## 9
What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?

Answer:
pgrep, pstree, top, proc
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/012.png)

 ## 10
What information does top command display?

Answer:
The top (table of processes) command shows a real-time view of running processes in Linux and displays kernel-managed tasks. The command also provides a system information summary that shows resource utilization, including CPU and memory usage.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/013.png)

 ## 11
Display the processes of the specific user using the top command.

Answer:
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/014.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/015.png)

 ## 12
What interactive commands can be used to control the top command? Give a couple of examples.

Answer:
Those interactive commands are r (renice) and k (kill)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/016.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/017.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/018.png)
 
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/019.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/020.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/021.png)

 ## 13
Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)

Answer:
- "<Shift>+<N>" sort by PID
- "<Shift>+<P>" sort by CPU usage
- "<Shift>+<M>" sort by Memory usage
- "<Shift>+<T>" sort by Time usage
- "<Shift>+<Z>" change colors
- "<c>" displays absolute path of command

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/022.png)

 ## 14
Concept of priority, what commands are used to set priority?
Answer:
Some processes may be highly CPU-intensive but not as important as others and hence can have a lower priority while others may or may not be highly CPU-intensive but are very important and hence should have higher priority.
For example if there is a process A, which detects fraud with input data and there is another process B, which makes hourly backups of some data, then the priority(A) > priority(B)!
This ensures that if both A and B are running at the same time, A would be allocated more processing bandwidth.
It is possible to adjust priority via nice and renice commands. We use nice when we want to start a process with an adjusted priority. And we use renice to change the priority for a currently active process.
The default niceness of a process is set to 0 (which corresponds to the priority value of 20). By applying a negative niceness, we increase the priority. 
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/023.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/024.png)

 ## 15
Can I change the priority of a process using the top command? If so, how?

Answer:
You can change the priority interactively by using r key which means renice. By pressing r key you activate adjustment menu which proposes you a PID to operate with and then will ask for a priority level to be set

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/025.png)

 ## 16
Examine the kill command. How to send with the kill command process control signal? Give an example of commonly used signals.

Answer:
The kill command can be sent either interactively via top or directly from the terminal
The mostly used signals are 15, 9 and 1
The signal SIGTERM (15) is used to ask a process to stop.
The signal SIGKILL (9) is used to force a process to stop.
The SIGHUP (1) signal is used to hang up a process. The effect is that the process will reread its configuration files, which makes this a useful signal to use after making modifications to a process configuration file.
There are 64 different signals for the kill command.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/026.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/027.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/028.png)

 ## 17
Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.

Answer:
Jobs command is used to list the jobs that you are running in the background and in the foreground. Job control commands enable you to place jobs in the foreground or background, and to start or stop jobs. The table describes the job control commands.
   Option	      Description
   jobs	         Lists all jobs
   bg %n	         Places the current or specified job in the background, where n is the job ID
   fg %n	         Brings the current or specified job into the foreground, where n is the job ID
   Ctrl-Z	      Stops the foreground job and places it in the background as a stopped job

The nohup utility executes a command line such that the command keeps running after you log out. In other words, nohup causes a process to ignore a SIGHUP signal. Depending on how the local shell is configured, a process started without nohup and running in the background might be killed when you log out. Often used via SSH for processes that take time

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/029.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/030.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/031.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/032.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/033.png)

    ## PART 2

 ## 1

Check the implementability of the most frequently used OPENSSH commands in the MS Windows operating system. (Description of the expected result of the commands +screenshots: command – result should be presented)

- Accessing the remote server using the default ssh command

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/034.png)

- Transferring a file from the localhost to a remote server 

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/035.png)

- Changing directory

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/036.png)

- Creating a file

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/037.png)

- Deleting a file

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/038.png)

- Creating a directory

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/039.png)

- Changing permissions to a file

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/040.png)

 ## 2
Implement basic SSH settings to increase the security of the client-server connection (at least)

By modifying the SSH configuration file:
- Changing SSH connection port and 
- Securing SSH with two factor authentication (after having installeed Google Authenticator PAM Module)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/041.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/042.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/043.png)

- And also PasswordAuthentication string in the SSH cconfiguration file shall be set to "no" after SSH encryption keys are gererated and deployed

 ## 3
List the options for choosing keys for encryption in SSH. Implement 3 of them.

Answer: you can coose from ECDSA, ChaCha20, rsa1024, rsa2048, rsa3072, rsa4096 and ed25519 keys

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/044.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/045.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/046.png)

 ## 4
Implement port forwarding for the SSH client from the host machine to the guest Linux virtual machine behind NAT.

Answer:

To create a port forwarding rule for guest VM named "ihr22" with IP address 10.0.2.15 and SSH port 22, mapped to local host at port 2522, we use the command: VBoxManage modifyvm "ihr22" --natpf1 "SSH,tcp,127.0.0.1,2522,10.0.2.15,22"

Here, the name of the rule should be set as unique. After creating the rule, we verify it using command VBoxManage showvminfo "ihr22" | grep NIC. And this will show the rule in the results.

Now, we can SSH to the guest VM using command ssh -p 2522 ihor@127.0.0.1

Here, the SSH login request sent to 127.0.0.1:2522 will automatically be translated into 10.0.2.15:22 by VirtualBox. Thus, we can now SSH to the guest VM.

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/047.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/048.png)

 ## 5
Intercept (capture) traffic (tcpdump, wireshark) while authorizing the remote client on the server using ssh, telnet, rlogin. Analyze the result.

Answer:
We capture the traffic on the 22nd port with wrighting it into a file using command sudo tcpdump -A -i enp0s3 port 22 -w capture.pcap

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/049.png)

Then ssh from Windows VM

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/050.png)

Copying the .pcap file to the local machine via scp: scp ihor@172.20.10.14:/home/ihor/capture.pcap /users/igor

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/051.png)

Now it is convenient to analyze the .pcap file using WireShark. IPs, MACs, directions, flags, lengths, protocols etc. can be determined and analysed from the captured traffic

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m4/task4.3/052.png)

And the .pcap file is also attached to the directory of this lab
