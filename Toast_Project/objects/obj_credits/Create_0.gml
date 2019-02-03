
audio_stop_all();
audio_play_sound(mus_lofi, 100, true)

var _totalSec = global.runTime_full / 60;
var _hours = floor(_totalSec / 3600);
_totalSec = _totalSec % 3600;
var _min = floor(_totalSec / 60);
var _sec = _totalSec % 60; 

scrollSpeedDefault = 0.5;
scrollSpeed = scrollSpeedDefault;

cred = @'



Made by
Adam "PixelDough" Worrell



Created with
GameMaker Studio 2



Total Time
' + string(_hours) + " hours, " + string(_min) + " minutes, and " + string(_sec) + " seconds" + @'




-FONT-
"m6x11" by Daniel Linssen

-MUSIC-
"A Journey Awaits" by Pierre Bondoerffer (@pbondoer)
"Shake and Bak" by Matthew Pablo
"Great Pyramids" by Alexandr Zhelanov
"It Is" by HorrorPen
"The Gears of Progress" by Section 31 - Tech
"Blackmoor Tides" by Matthew Pablo
"Jungle Jumpin" by Scott Elliott
"Ghoulish Fun" by Eric Matyas Soundimage.org
"Rattled" by Chinchilete
"Chill Lofi Inspired" by omfgdude









';

cred_x = room_width/2;
cred_y = room_height+16;
