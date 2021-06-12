


// How long you've been in the round for
secondsInRound = 0;


// Dynamically adjusted
secondsBeforeNight = 1;


// When true enemies spawn
night = false;


audio_play_sound(bgm_The_Unknown, 1, true);
audio_play_sound(bgm_The_Unknown2, 1, true);



// House requirements
houseAmountOfWood = 0;
houseAmountOfRocks = 0;
// 1 means more rocks are needed
// 2 means more wood is needed
// 3 means they're both needed fairly equally
resourceSearch = choose(1,2,3);
houseRequiresXwood = 0;
houseRequiresXrocks = 0;

decideTotalTimer = 0;
decideTotalTimerMAX = 60;



_obj_game_manager._audioBGMcurrent = 1;
_obj_game_manager._audioBGMcurrent2 = 0;