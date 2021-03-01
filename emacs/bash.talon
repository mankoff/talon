app: /emacs/
title: /bash/
-
tag(): terminal
tag(): user.git

debug: insert("debug emacs bash")
send (line|it): key(alt-s)
submit:
	key(alt-s down)
	user.quick_macro_set("key", "alt-s down")