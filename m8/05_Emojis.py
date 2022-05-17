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
