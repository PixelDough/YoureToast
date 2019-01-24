
dialog = []
text_add(spr_profile_phone, 0, "Hello. Hello! Is this thing on? Testing... One! Two! Three!", snd_voice2)
text_add(spr_profile_kid, 3, "Yes, Doc... It's working.", snd_voice1)
text_add(spr_profile_phone, 0, "Excelent! Welcome, " + environment_get_variable("USERNAME") + ", to the \"You're Toast\" demo!", snd_voice2)
text_add(spr_profile_kid, 2, "Did you say demo? I think " + environment_get_variable("USERNAME") + " would rather play a FINISHED game!", snd_voice1)
text_add(spr_profile_phone, 0, "Yes, I agree. But like any good experiment, this game requires extensive testing, to drive out any bugs the developer might have missed!", snd_voice2)
text_add(spr_profile_phone, 0, "You there, looking at the screen! You get to control my latest experiment, a living piece of toast!", snd_voice2)
text_add(spr_profile_kid, 1, "The toast's goal is to make it to the toaster, which Doc assures me has been gutted of all its burning parts for the sake of the experiment...", snd_voice1)
text_add(spr_profile_phone, 0, "Most of the story has been removed or changed for this demo, as well as all of the levels.", snd_voice2)

line = 0;
finalText = "";
char = 0;
charSpeed = 1;
