# The progress of the home task 3.1

 ## 1
Connected three already created networks together via routers PT-Empty, with modules 1CGE previously mounted into them (5 modules per each switch).
Range of 24.1.71.0/24 was split into four subnetworks and IP addresses were assigned to the interfaces connecting routers between each other and to the interface which is turned towards Home Office.
The detailed description of statically assigned IPs, interfaces and ports connected is shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/001.png)

 ## 2
Defined a closest router's port as Default Gateway on for all computers (Home Router is Defaut Gateway for Client 3).
Checked connection between computers and their routers. 
Ping from Client 2 to Router ISP1 runs OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/002.png)

Ping from ISP Server to Router ISP3 runs OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/003.png)

Ping from Client 3 to Router ISP2 runs OK

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/004.png)

 ## VLAN at Data Center setup
 ## 3
Checked connectionn between servers and pings run OK
Then switched subnet mask to 255.255.255.192 on them and ping failed as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/005.png)

Apparently, such happened because of subnet mask 255.255.255.192 has divided 1.14.71.0/24 network into four subnetworks where statically assigned IPs of servers .50 and .100 and .150 fell within three separate subnetworks

 ## 4
Now created three additional VLANs on the Switch Data Center and affilated corresponding ports to them as it shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/006.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/007.png)

Tried to check connection between servers but ping failed again 

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/008.png)

Obviously, it happens due to despite the switch now seems to be adjusted correctly but servers are still standing in three separate VLANs which are inherently isolated, so servers cannot comunicate to each other. Servers need a router which would allow them to comuticate. 

 ## Extra task. Routing between VLANs setup
 ## 5
Now switched Data Center switch FE0/1 port from Access to Trunk

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/009.png)

 ## 6 
 And deleted static IP configuration from GE0/0 port of Router ISP3

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/010.png)

On the Router ISP3 via CLI mode created three subinterfaces and configurated them as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.2/011.png)

 ## 7
Assigned .1 and .65 and .129 as Default Gateways for Web Server1, Web Server2 and DNS Server correspondingly

 ## 8
Checked workability and ping from Web Server2 ran OK

### And PKT-file is also attached to the repository