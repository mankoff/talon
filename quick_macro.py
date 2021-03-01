from talon import Context, Module, actions, noise, ui
from typing import Callable, Union, Any
import logging

mod = Module()
ctx = Context()

# This could be None or a tuple.
# None: unassigned.
# tuple: (actions, *args). Action is the path to an action.
quick_macro = None

@mod.action_class
class Actions:
    def quick_macro_clear():
        """Clears the quick macro"""
        global quick_macro
        # logging.info("== Quick macro cleared ==")
        quick_macro = None

    def quick_macro_set(action: str, arg: Any = None):
        """Sets the quick macro"""
        global quick_macro
        quick_macro = (action, arg) if arg is not None else (action,)
        logging.info(f"== quick macro set to {quick_macro!r} ==")

    def quick_macro_run():
        """Runs the quick macro"""
        if quick_macro is None:
            logging.info("== quick macro invoked, but no quick macro assigned ==")
            return
        logging.info("== quick macro invoked ==")
        if isinstance(quick_macro, tuple):
            action, *args = quick_macro
            func = actions
            for pathelt in action.split('.'):
                func = getattr(func, pathelt)
            func(*args)
        else:
            logging.info(f"== Unknown quick macro: {action!r} ==")

ui.register("app_deactivate", lambda app: actions.user.quick_macro_clear())
ui.register("win_focus", lambda win: actions.user.quick_macro_clear())

@ctx.action_class("user")
class NoiseActions:
    def pop():
        actions.user.quick_macro_run()
