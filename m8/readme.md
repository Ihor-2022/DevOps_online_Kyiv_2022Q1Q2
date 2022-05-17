 # The progress of the home task 8

 ## 1
Writing an easy program, which displays current date and time

#### The code: 
```python
   from datetime import datetime

   print("Today is", (datetime.now().strftime("%d/%m/%Y")))
   print("Current time is", (datetime.now().strftime("%H:%M:%S")))
```
#### The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/001.png)

 ## 2
Writing a python program, which accepts comma-separated numbers, and then writes tuple and list of them

#### The code:
```python
numbers = input("Please enter some comma-separated numbers here: ")
list = numbers.split(",")
tuple = tuple(list)
print("List: ",list)
print("Tuple: ",tuple)
```
#### The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/002.png)

 ## 3
Writing python program, which asks file name, then reads the file and displays only even lines

#### The code:
```python
file = input("Please enter file name here: ")
i = 1
f = open(file, 'r')
for line in f.readlines():
    if i % 2 == 0:
        print(line)
    i += 1
else:
    pass
f.close()
```
#### The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/003.png)

 ## 4
Writing python program, which reads html document, parses it, and shows it’s title

#### The code:
```python
from bs4 import BeautifulSoup
with open(input("Please enter here name of the file to parse: ")) as obj:
    data = BeautifulSoup(obj, "html.parser")
    print("TITLE is: ", (data.title.text))
obj.close()
```
#### The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/004.png)

 ## 5
Writing python program, which parses user’s text and replaces some emotions with emoji’s

#### The code:
```python
text = input("Pls input your text with emotions: ")
words = text.split(" ")
emojis = {
   "smiling" : "\U0001F642",
   "disappointed" : "\U0001F61E",
   "grinning" : "\U0001F600",
   "fearful":"\U0001F628",
   "happy": "\U0001F973",
   "laughing": "\U0001F923"
}
output = " "
for word in words:
   output += emojis.get(word, word) + " "
print(output)
```
#### Text for the input:  

I was standing smiling but a bit disappointed while John approached to me with his grinning face making me fearful. But eventually I noticed he had forgotten his gun. It made me happy and I burst out laughing loudly.

#### The output:

I was standing 🙂 but a bit 😞 while John approached to me with his 😀 face making me fearful. But eventually I noticed he had forgotten his gun. It made me 🥳 and I burst out 🤣 loudly.

 ## 6
Writing a program, that shows basic PC information

#### The code:
```python
import psutil
import platform
from datetime import datetime

def get_size(bytes, suffix="B"):
    """
    Scale bytes to its proper format
    e.g:
        1253656 => '1.20MB'
        1253656678 => '1.17GB'
    """
    factor = 1024
    for unit in ["", "K", "M", "G", "T", "P"]:
        if bytes < factor:
            return f"{bytes:.2f}{unit}{suffix}"
        bytes /= factor

print("="*40, "System Information", "="*40)
uname = platform.uname()
print(f"System: {uname.system}")
print(f"Node Name: {uname.node}")
print(f"Release: {uname.release}")
print(f"Version: {uname.version}")
print(f"Machine: {uname.machine}")
print(f"Processor: {uname.processor}")

# Boot Time
print("="*40, "Boot Time", "="*40)
boot_time_timestamp = psutil.boot_time()
bt = datetime.fromtimestamp(boot_time_timestamp)
print(f"Boot Time: {bt.year}/{bt.month}/{bt.day} {bt.hour}:{bt.minute}:{bt.second}")

# let's print CPU information
print("="*40, "CPU Info", "="*40)
# number of cores
print("Physical cores:", psutil.cpu_count(logical=False))
print("Total cores:", psutil.cpu_count(logical=True))
# CPU frequencies
cpufreq = psutil.cpu_freq()
print(f"Max Frequency: {cpufreq.max:.2f}Mhz")
print(f"Min Frequency: {cpufreq.min:.2f}Mhz")
print(f"Current Frequency: {cpufreq.current:.2f}Mhz")
# CPU usage
print("CPU Usage Per Core:")
for i, percentage in enumerate(psutil.cpu_percent(percpu=True, interval=1)):
    print(f"Core {i}: {percentage}%")
print(f"Total CPU Usage: {psutil.cpu_percent()}%")

# Disk Information
print("="*40, "Disk Information", "="*40)
print("Partitions and Usage:")
# get all disk partitions
partitions = psutil.disk_partitions()
for partition in partitions:
    print(f"=== Device: {partition.device} ===")
    print(f"  Mountpoint: {partition.mountpoint}")
    print(f"  File system type: {partition.fstype}")
    try:
        partition_usage = psutil.disk_usage(partition.mountpoint)
    except PermissionError:
        # this can be catched due to the disk that
        # isn't ready
        continue
    print(f"  Total Size: {get_size(partition_usage.total)}")
    print(f"  Used: {get_size(partition_usage.used)}")
    print(f"  Free: {get_size(partition_usage.free)}")
    print(f"  Percentage: {partition_usage.percent}%")
# get IO statistics since boot
disk_io = psutil.disk_io_counters()
print(f"Total read: {get_size(disk_io.read_bytes)}")
print(f"Total write: {get_size(disk_io.write_bytes)}")
```

#### The output:

/usr/local/bin/python3 /Users/IGOR/PycharmProjects/EPAM/demo.py  

======================================== System Information ========================================  
System: Darwin  
Node Name: MacBook-Pro-Igor.local  
Release: 20.6.0  
Version: Darwin Kernel Version 20.6.0: Tue Feb 22 21:10:41 PST 2022; root:xnu-7195.141.26~1/RELEASE_X86_64  
Machine: x86_64  
Processor: i386  
======================================== Boot Time ========================================  
Boot Time: 2022/5/15 12:8:0  
======================================== CPU Info ========================================  
Physical cores: 2  
Total cores: 4  
Max Frequency: 3000.00Mhz  
Min Frequency: 3000.00Mhz  
Current Frequency: 3000.00Mhz  
CPU Usage Per Core:  
Core 0: 25.7%  
Core 1: 11.0%  
Core 2: 37.6%  
Core 3: 9.9%  
Total CPU Usage: 21.8%  
======================================== Disk Information ========================================  
Partitions and Usage:  
=== Device: /dev/disk1s5s1 ===  
  Mountpoint: /  
  File system type: apfs  
  Total Size: 465.72GB  
  Used: 14.27GB  
  Free: 170.94GB  
  Percentage: 7.7%  
=== Device: /dev/disk1s4 ===  
  Mountpoint: /System/Volumes/VM  
  File system type: apfs  
  Total Size: 465.72GB  
  Used: 3.00GB  
  Free: 170.94GB  
  Percentage: 1.7%  
=== Device: /dev/disk1s2 ===  
  Mountpoint: /System/Volumes/Preboot  
  File system type: apfs  
  Total Size: 465.72GB  
  Used: 661.33MB  
  Free: 170.94GB  
  Percentage: 0.4%  
=== Device: /dev/disk1s6 ===  
  Mountpoint: /System/Volumes/Update  
  File system type: apfs  
  Total Size: 465.72GB  
  Used: 18.17MB  
  Free: 170.94GB  
  Percentage: 0.0%  
=== Device: /dev/disk1s1 ===  
  Mountpoint: /System/Volumes/Data  
  File system type: apfs  
  Total Size: 465.72GB  
  Used: 276.12GB  
  Free: 170.94GB  
  Percentage: 61.8%  
Total read: 57.95GB  
Total write: 41.64GB  

Process finished with exit code 0


## And also six py files are attached to the repository 

# Thank you!
