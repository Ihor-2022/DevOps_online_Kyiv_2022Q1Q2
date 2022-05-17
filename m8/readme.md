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

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/003.png)

 ## 4
Writing python program, which should reads html document, parses it, and shows it’s title

The code:
```python
from bs4 import BeautifulSoup
with open(input("Please enter here name of the file to parse: ")) as obj:
    data = BeautifulSoup(obj, "html.parser")
    print("TITLE is: ", (data.title.text))
obj.close()
```
The output:

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m8/004.png)

 ## 5
Write python program, which will parses user’s text and replaces some emotions with emoji’s

The code:
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
Text for the input:
I was standing smiling but a bit disappointed while John approached to me with his grinning face making me fearful. But eventually I noticed he had forgotten his gun. It made my happy and I burst out laughing loudly.

The output:

I was standing 🙂 but a bit 😞 while John approached to me with his 😀 face making me fearful. But eventually I noticed he had forgotten his gun. It made my 🥳 and I burst out 🤣 loudly.

 ## 6
