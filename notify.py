from talon import Module, Context, app, speech_system, actions

ctx = Context()
mod = Module()

def on_phrase(j):
    phrase = getattr(j["parsed"], "_unmapped", j["phrase"])
    phrase = " ".join(word.split("\\")[0] for word in phrase)
    app.notify(phrase)

speech_system.register('post:phrase', on_phrase)

# above enables notifications. Below supports toggling them.

do_notify = True

@mod.action_class
class Actions:
    def notify_toggle():
        """Toggle OS notifications"""
        global do_notify
        if do_notify:
            speech_system.unregister('post:phrase', on_phrase)
        else:
            speech_system.register('post:phrase', on_phrase)
        do_notify = not do_notify
