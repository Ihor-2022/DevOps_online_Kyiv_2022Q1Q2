# The progress of the home task 3.1

 ## 1
Following to the home task guide I've created networks: Home Office, Enterprise, Data Center as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/001.png)

 ## 2
Assigned address 10.71.14.0/24 to the Enterprice network 

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/002.png)

 ## 3
Ping from Client 1 to DHCP Server runs OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/003.png)

 ## 4
The Data Center network received assigned address 1.14.71.0/24 where .50 is a host part for Web Server 1 and .100 is a host part for Web Server 2 and .150 is a host part for DNS Server

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/004.png)

 ## 5
Pings between servers run OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/005.png)

 ## 6
Deleted Ethernet network adapter on Client 3 and mounted wi-fi module PT-HOST-NM-1W instead to establish wireless connection

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/006.png)

 ## 7
Assigned 192.168.0.35 static IP address to Client 3

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/007.png)

 ## 8
Ping from Client 3 to Home Router runs OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/008.png)

## 9 Extra work
Captured some traffic by Wireshark while downloading a 80-MB file, then switched to analisys mode.
Found a TCP-segment in the captured flow. In this segment found and highlighted headers of data link layer, network layer and transport layer.
And from those headers identified MAC-addresses, IPs and ports of source and destination respectively as it shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.1/009.jpg)

And PKT-file is also attached to the repository
