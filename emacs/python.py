from talon import Context, Module

ctx = Context()

ctx.matches = """
app: /emacs/
win.title: /jupyter-python/
"""

@ctx.action_class("code")
class org_python_actions:
    def language():
        return set(["python", "org"])
