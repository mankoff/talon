app: /emacs/
title: /.org/
-

(level|heading) one: insert("* ")
(level|heading) two: insert("** ")
(level|heading) three: insert("*** ")
(level|heading) four: insert("**** ")
(level|heading) cycle: key(tab)

go up level: key(ctrl-c ctrl-u)
go up section: key(ctrl-c ctrl-p)
go down section: key(ctrl-c ctrl-n)
go up (babel|code): key(ctrl-c ctrl-v ctrl-p)
go down (babel|code): key(ctrl-c ctrl-v ctrl-n)

### Babel

# yasnippets. Make "name: user.text" pronouncable words
(code | babel | template) <user.text>:
     key(ctrl-c & ctrl-s)
     insert(text)
     key(enter)
     sleep(50ms)
     key(" ")
     sleep(50ms)
     key(backspace)
     # key(alt-x)
     # insert("set-frame-title")
     # key(enter)

(code | babel) tangle this: key(ctrl-u ctrl-c ctrl-v ctrl-t)
(code | babel) tangle: key(ctrl-c ctrl-v ctrl-t)
(code | babel) (up|last): key(ctrl-c ctrl-v ctrl-p)
(code | babel) (down|next): key(ctrl-c ctrl-v ctrl-n)

### Export

export (tech | latex): key(ctrl-c ctrl-e l l)
export web: key(ctrl-c ctrl-e h h)
export dock: key(ctrl-c ctrl-e o o)


# # yasnippets. Make "name: user.text" pronouncable words
# (babel | template) <user.text>:
#      key(ctrl-c & ctrl-s)
#      insert(text)
#      key(enter)

# buffer [<phrase>]: 
#    user.emacs_buffer_prompt()
#    user.insert_lowercase(phrase or "")
