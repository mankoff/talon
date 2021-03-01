tag: terminal
-

cat: insert("cat ")
cat less: insert("less ")
open: insert("o ")
change mode: insert("chmod ")
pickle:
	key(ctrl-p)
	user.quick_macro_set("key", "ctrl-p")
	

nickle:
	key(ctrl-n)
	user.quick_macro_set("key", "ctrl-n")
	
clear line: key(ctrl-a ctrl-k)
tail: key(ctrl-e)
head: key(ctrl-a)
junk: key(ctrl-d)

list: insert("nth ")

list [<user.text>]:
     insert("nth ")
     insert(user.text)
     key(enter)

list (this|that|it):
	insert("nth")
	key(enter)
	
list time:
	insert("nth -tr")
	key(enter)

list size:
	insert("dux")
	key(enter)

# find [<user.text>]: user.terminal_change_directory(text or "")
find file [<user.text>]: 
     insert("find ./ -name \"*")
     insert(text)
     insert("*\"")
     key(enter)

find inside [<user.text>]: 
     insert("ag ")
     insert(text)
     key(enter)

# katie [<user.text>]: user.terminal_change_directory(text or "")
jump search [<user.text>]:
     insert("j -s | grep -i " + text)
     insert("\n")

jump increase:
     insert("j -i")
     key(enter)
     
jump [<user.text>]:
    insert("j ")
    insert(text)
    key(enter)
    
folder [<user.text>]:
    insert("cd ")
    insert(text)
    key(tab)
    key(enter)

