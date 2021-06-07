

// Select sprite
sprite_index = choose(spr_rock, spr_log);

// 0 when not held, 1 when picked up
held = 0;


// Target
trg = obj_player;

// Speed
spd = 4;

// Distance to orbit around player
length = 16;

// IDK lol
place = 0;


// Sucks in before orbiting
suckIn = 0;


// Resource worth
worth = 1;

// Deposit (when true, deposit into house)
deposit = false;


freshSpawn = false;
freshSpawnTimer = irandom_range(10,15);
lr = choose(-1,1);
up = choose(-1,1);
lrm = irandom_range(1,2);
upm = irandom_range(1,2);


useShake();
shaking = true;