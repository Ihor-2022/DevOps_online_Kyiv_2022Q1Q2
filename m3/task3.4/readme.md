 # The progress of the home task 3.4
 # Setting up DHCP, DNS, NAT

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/001.png)

 ## 1
Adjusted DHCP Server inside the Enterprise subnetwork as follows: entered DHCP tab and tuned up the DHCP Pool by assigning the start IP address as 10.71.14.10 and the Default Gateway address as the adjacent interface of the ISP1 router. Switched DHCP service on and saves as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/002.png)

 ## 2
Verified workability of the service by switching to DHCP service on Client 1 and Client 2

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/003.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/004.png)

 ## 3
Adjusted DHCP at the Home Router similarly 

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/005.png)
 
 ## 4
Checked workability at Client 3

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/006.png)

 ## 5
Assigned domain names to Web Server1 and Seb Sever2 to adjust DNS service and verify its performance, switched DNS service on

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/007.png)

 ## 6
Tuned DHCP server adjustments by inserting DNS server address and renewed adjustments on Clients by switching from DHCP to Static and then back to DHCP. 

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/008.png)

 ## 7
Checked performance via sending pings from Clients to domain names as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/009.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/010.png)

 ## Extra work. Port forwarding on the Home Router setting up 

 ## 8
Added a Home Server to the Home Office subnetwork and assigned a static IP address for it, then modified index.html at the HTTP service tab as follows

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/011.png)

 ## 9
Assigned Port Forwarding on the Home Router

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/012.png)

 ## 10
Inserted a record for Home Server to the DNS Server

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/013.png)

 # 11
Checked workability by typing ‘devops3.com’ in Desktop/Web Browser on Client 3 as shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m3/task3.4/014.png)

### And two PKT-files are also attached to the repository