# The progress of the home task 2.1 

 ## PART 1. HYPERVISORS

The most popular hypervisors for infrastructure virtualization are Citrix XenServer, Microsoft Hyper-V, VMware vSphere.
Based on the open-source project Xen, Citrix XenServer is one of the most important hypervisors in the industry. 
Citrix and VMware support many more operating systems than Hyper-V what is their main advantage. They support a variety of Linux operating systems and Windows operating systems.

## PART 2. WORK WITH VIRTUALBOX

-	Installed VirtualBox, created VM1 and installed latest Ubuntu on it.
-	Got acquainted with the possibilities of VM1 control - start, stop, reboot, save state, etc.
-	Cloned VM1 to VM2 and created a group of two, learned functions related to groups
![This is an image](
-	Took several snapshots of VM1 while changing its state 
![This is an image]
-	Exported VM1 to *.ova file and imported VM from *.ova file
![This is an image]
-	Explored VM configuration options (general settings, system settings, display, storage, audio, network, etc.)
-	Configured the USB to connect the USB ports of the host machine to the VM
![This is an image]
-	Configured a shared folder to exchange data between the virtual machine and
the host
![This is an image]
-	Configured different network modes for VM1 and VM2. Check the connection
between VM1, VM2, Host, Internet for different network modes. Established connection between VM1 and VM2
![This is an image]
-	Worked out CLI through VBoxManage exetuting basic commands of VBoxManage: list, showvminfo, createvm, startvm, modifyvm, clonevm, snapshot, controlvm.

## PART 3. WORK WITH VAGRANT

-	Downloaded and installed Vagrant for Mac via brew, initialized the environment with the default Vagrant box in Desktop/Ihor
![This is an image]
-	Run vagrant up
![This is an image]
-	Connected to the VM using MacWise and recorded date and time by executing ‘date’ command
![This is an image] 
-	Stopped and deleted the created VM via ‘vagrant halt’ and ‘vagrant destroy’.
-	Created own vagrant box
![This is an image]
