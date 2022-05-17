 # The progress of the home task 8

 ## 1
Writing an easy program, which displays current date and time

The code: 
```python
   from datetime import datetime

   print("Today is", (datetime.now().strftime("%d/%m/%Y")))
   print("Current time is", (datetime.now().strftime("%H:%M:%S")))
```
The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/001.png)

 ## 2
Writing a python program, which accepts comma-separated numbers, and then writes tuple and list of them

The code:
```python
numbers = input("Please enter some comma-separated numbers here: ")
list = numbers.split(",")
tuple = tuple(list)
print("List: ",list)
print("Tuple: ",tuple)
```
The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/002.png)

 ## 3
Writing python program, which asks file name, then reads the file and displays only even lines

The code:
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
The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/002.png)

 ## 4
 
