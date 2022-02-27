# The progress of the home task 3.3

 ## 1
The backbone network was divided into subnetworks with IP-addresses assigned to the routers interfaces as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/001.png)

Router 	Interface 	Network IP-address 	Host IP-address 	
ISP1 		GE0/0 		10.71.14.0/24 	10.71.14.1 
            GE1/0 		24.1.71.0/26 	24.1.71.1 
            GE2/0 		24.1.71.64/26 	24.1.71.65
ISP2 		GE0/0 		24.1.71.192/26 	24.1.71.193 
            GE1/0 		24.1.71.0/26 	24.1.71.2 
            GE3/0 		24.1.71.128/26 	24.1.99.130 
ISP3 		GE0/0 		1.14.71.0/24
            GE2/0 		24.1.71.64/26 	24.1.71.66 
            GE3/0 		24.1.71.128/26 	24.1.71.129 
Home 		Internet 	24.1.71.192/26 	24.1.71.194

Adjusted routing tables on the ISP1, ISP2 and ISP3 routers. Only distant networks were inserted in the routing tables as shown below. There was no need to insert Home Office network 192.168.0.0 as it was located behind the NAT

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/002.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/003.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/004.png)

 ## 2
Adjusted routing on wireless Home Router by inserting default route pointing to the closest port of the ISP2 router

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/005.png)

 ## 3
Verified workability of the network by ping and tracert commands as shown below. Pings ran OK

    Pings from Client 3

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/006.png) 

    Pings from Client 2

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/007.png)

    Pings from Web Server 2

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/008.png)

 ## 4 Extra work
Deleted static records from the routing tables of all the routers

 ## 5
Adjusted RIP protocol on ISP1, ISP2 and ISP3 routers by inserting lists of adjacent subnetworks in classful formats as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/009.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/010.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/011.png)

 ## 6
Checked workability and all pings ran OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/012.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/013.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.3/014.png)

### And two PKT-files are also attached to the repository