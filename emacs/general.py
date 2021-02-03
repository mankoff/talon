from talon import Context, Module, actions

ctx = Context()
mod = Module()

mod.tag("emacs", desc="Active when Emacs is focused.")

ctx.matches = """
app: /emacs/
"""

@ctx.action_class('win')
class win_actions:
    def filename():
        title = actions.win.title()
        # currently in emacs the window title includes the file name
        return title

    def file_ext():
        return actions.win.filename().split(".")[-1]
