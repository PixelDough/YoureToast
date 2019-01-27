
text_add(spr_profile_doc, F.BLANK, "Hello. Hello! Is this thing working? Testing... One! Two! Three!", snd_voice_doc)
text_add(spr_profile_kid, F.ANNOYED, "Yes, Doc... It's working.", snd_voice_kid)
text_add_script(start_music, mus_lab)
text_add_script(screen_shake, [5, 10])
text_add(spr_profile_doc, F.HAPPY, "Excelent! Welcome, user, to the \"You're Toast\" demo!", snd_voice_doc)
text_add(spr_profile_kid, F.CONFUSED, "Did you say \"demo\"? I think the user would rather play a FINISHED game!", snd_voice_kid)
text_add(spr_profile_doc, F.CONFUSED, "Yes, I agree. But like any good experiment, this game requires extensive testing, to drive out any bugs the developer might have missed!", snd_voice_doc)
text_add(spr_profile_doc, F.HAPPY, "You there, looking at the screen! You get to control my latest experiment, a living piece of toast!", snd_voice_doc)
text_add(spr_profile_kid, F.HAPPY, "The toast's goal is to make it to the toaster, which Doc assures me has been gutted of all its burning parts for the sake of the experiment...", snd_voice_kid)
text_add(spr_profile_doc, F.SCARED, "The toaster isn't the ONLY thing that's been gutted! Most of the story elements and levels have been removed or changed for this demo.", snd_voice_doc)
text_add(spr_profile_doc, F.HAPPY, "Go ahead and continue through that door, and let's get started!", snd_voice_doc)
text_add_script(door_open);