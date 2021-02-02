from talon import Module, Context, app, speech_system, actions, noise

ctx = Context()
mod = Module()

last_phrase = ""
pop_phrase = ""

auto_pop_that_phrases = ["go", "scroll", "delete", "clear"]

def on_phrase(j):
    """Record the last phrase"""
    phrase = getattr(j["parsed"], "_unmapped", j["phrase"])
    phrase = " ".join(word.split("\\")[0] for word in phrase)
    global last_phrase
    last_phrase = phrase
    print(f'*** Storing last phrase: {last_phrase} ***')
    # auto-set pop_phrase if the last phrase is in the auto_pop_that_phrases list

    global auto_pop_that_phrases
    for p in auto_pop_that_phrases:
        if phrase[0:len(p)] == p:
            global pop_phrase
            pop_phrase = phrase

speech_system.register('post:phrase', on_phrase)

@mod.action_class
class Actions:
    def pop_phrase():
        """Set pop command to the last phrase"""
        global last_phrase
        global pop_phrase
        pop_phrase = last_phrase
        print(f'*** Setting pop phrase: {pop_phrase} ***')

def on_pop(active):
    global pop_phrase
    actions.mimic(pop_phrase) 

noise.register("pop", on_pop)
