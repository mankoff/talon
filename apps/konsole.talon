app: /konsole/
-

paste that: key(ctrl-shift-v)
cat: insert("cat ")
cat less: insert("less ")
open: insert("o ")
change mode: insert("chmod ")
pickle: key(ctrl-p)
nickle: key(ctrl-n)
scroll up: key(shift-page-up)
scroll down: key(shift-page-down)
go up: key(shift-up)
go down: key(shift-down)

list: insert("nth ")

list [<user.text>]:
     insert("nth ")
     insert(user.text)
     key(enter)

list (this|that):
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
     insert(user.text)
     insert("*\"")
     key(enter)

find inside [<user.text>]: 
     insert("ag ")
     insert(user.text)
     key(enter)

jump increase:
     insert("j -i")
     key(enter)
     
jump [<user.text>]:
    insert("j ")
    insert(user.text)
    key(enter)
    
folder [<user.text>]:
    insert("cd ")
    key(tab)
    insert(user.text)
    key(enter)

#     user.terminal_list_directories()
# lisa all: 
#     user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
kill all: user.terminal_kill_all()
