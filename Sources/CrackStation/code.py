import itertools
import json
import hashlib

# Driver code
letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "?"]

combination = {}
flag = ""

for i in list(itertools.product(letters, repeat=3)):
    for j in i:
        flag = flag + j
    combination[hashlib.sha256(flag.encode()).hexdigest()] = flag
    combination[hashlib.sha1(flag.encode()).hexdigest()] = flag
    flag = ""

for i in list(itertools.product(letters, repeat=2)):
	for j in i:
		flag = flag + j
	combination[hashlib.sha256(flag.encode()).hexdigest()] = flag
	combination[hashlib.sha1(flag.encode()).hexdigest()] = flag
	flag = ""

for i in letters:
	combination[hashlib.sha256(i.encode()).hexdigest()] = i
	combination[hashlib.sha1(i.encode()).hexdigest()] = i

with open('data.json', 'w', encoding='utf-8') as f:
    json.dump(combination, f, ensure_ascii=False)




