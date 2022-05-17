from bs4 import BeautifulSoup
with open(input("Please enter here name of the file to parse: ")) as obj:
    data = BeautifulSoup(obj, "html.parser")
    print("TITLE is: ", (data.title.text))
obj.close()
