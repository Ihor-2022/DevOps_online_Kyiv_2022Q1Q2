 # The progress of the home task 5

 ## 1 
Based of VB framework we create the network as shown below, where: 
-	Host – a student’s laptop, on which the VB is running, 
-	Server_1 – a virtual machine on which Ubuntu Desktop running with installed server package, 
-	Client_1 – a virtual machine on which Ubuntu Desktop is running, 
-	Client_2 – a virtual machine on which Cent OS is running

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/001.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/002.png)

For both Client_1 and Client_2 one interface is looking at the Server_1 to obtain an IP via DHCP and the other one is set statically to comunicate directly with the other Client (1 or 2)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/003.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/004.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/005.png)

 ## 2
All the interfaces on the Server_1 are set up as static

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/006.png)

 ## 3
The DHCP service on the Server_1 to assign IPs for the Client_1 and Client_2 is set up as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/007.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/008.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/009.png)

 ## 4
Testing connections between virtual machines

Client_1 to Server_1 and to Client_2 (via direct link: net_4) - OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/010.png)

And Client_2 to Server_1 and to Client_1 (via direct link: net_4) - OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/011.png)

Pings between Client_1 and Client_2 via Net_2 to Net_3 are also OK after IP routing on the Server_1 was up

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/012.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/013.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/014.png)

 ## 5
Now we assign two additional static IP to the loop interface "lo" as follows

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/015.png)

And setting up the routing configuration so that packets from the Client_2 would go to 172.17.24.1 via Server_1

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/016.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/017.png)

while packets from the Client_2 would go to 172.17.34.1 via Net4

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/018.png)

 ## 6
Now we calculate a summarizing route for addresses 172.17.24.1 and 172.17.34.1

172.17.24.1 in binary representation is equal to 10101100.00010001.00011000.00000001
172.17.34.1 in binary representation is equal to 10101100.00010001.00100010.00000001
The first 18 bits are equal which gives netmask  11111111.11111111.11000000.00000000 i.e. 255.255.192.0 i.e. prefix 18
Now we delete all routing rules that were set up on the previous step and set up a new routing rule which establishs a common (summarized) route that passes via Server_1

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/019.png)

Testing connectivity

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/020.png)

 ## 7
Now we set up SSH service on all machines

Client_1 connects to Server_1 with further SSH key generation

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/021.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/022.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/023.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/024.png)


Client_2 connects to Server_1 with further RSA 4096 key generation

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/025.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/026.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/027.png)

Client_1 connects to Client_2 with further SSH key generation

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/028.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/029.png)

Client_2 connects to Client_1 with further SSH key generation

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/030.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/031.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/032.png)

 ## 8
Now we set up firewall on Server_1 so that SSH connection is allowed from Client_1 and denied from Client_2

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/033.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/034.png)

And now we set up the firewal so that it passes ping from Client_2 to 172.17.24.1 while dropping ping from the same host to 172.17.34.1
For that purpose we add a restrictive rule to IP tables.
Pings before the rule is added

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/035.png)

The rule is added

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/036.png)

Pings after the rule is added

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/037.png)

 ## 9
And now we delete all the previously added routing rules for Client_1 and Client_2 and set up NAT service on the Server_1 so that to let ping echo request from both Clients to go to the internet and return back

Pings before the NAT is set up
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/038.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/039.png)

Assigning the NAT rule

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/040.png)

Pings after the NAT was set up

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/041.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m5/task5/042.png)

Thank you!