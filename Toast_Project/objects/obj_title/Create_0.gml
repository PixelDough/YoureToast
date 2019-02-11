
enum TITLE {
	NEW,
	LEVEL_SELECT,
	QUIT
}

SEL = TITLE.NEW;

menu_title = [];
menu_title[TITLE.NEW] =				["New Game",		0, NewGame];
menu_title[TITLE.LEVEL_SELECT] =	["Level Select",	0, LevelSelect];
menu_title[TITLE.QUIT] =			["Quit",			0, Quit];
