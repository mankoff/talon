app: /emacs/
win.title: /org.*python/
win.title: /jupyter-rep/
-

debug: insert("debug emacs python")
# action("code.language"): "python"

open console: key(ctrl-c ctrl-v ctrl-z)

(panda|pandas): insert("pd.")
xray: insert("xr.")
numpy: insert("np.")
data frame: insert("df.")
nan: insert("nan")