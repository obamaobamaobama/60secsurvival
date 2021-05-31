

// IS key pressed or not?
b_check = keyboard_check(c1b) || keyboard_check(c2b);
a_check = keyboard_check(c1a) || keyboard_check(c2a);

up_check = keyboard_check(c1up) || keyboard_check(c2up);
down_check = keyboard_check(c1down) || keyboard_check(c2down);
left_check = keyboard_check(c1left) || keyboard_check(c2left);
right_check = keyboard_check(c1right) || keyboard_check(c2right);

select_check = keyboard_check(c1select) || keyboard_check(c2select);
start_check = keyboard_check(c1start) || keyboard_check(c2start);




// HELD TIMES
if (b_check) { b_heldTime += 1; }
if (!b_check && b_heldTime > 0) { b_heldTime = 0; }

if (a_check == 1) { a_heldTime += 1; }
if (!a_check && a_heldTime > 0) { a_heldTime = 0; }

if (up_check) { up_heldTime += 1; }
if (!up_check && up_heldTime > 0) { up_heldTime = 0; }

if (down_check) { down_heldTime += 1; }
if (!down_check && down_heldTime > 0) { down_heldTime = 0; }

if (left_check) { left_heldTime += 1; }
if (!left_check && left_heldTime > 0) { left_heldTime = 0; }

if (right_check) { right_heldTime += 1; }
if (!right_check && right_heldTime > 0) { right_heldTime = 0; }

if (select_check) { select_heldTime += 1; }
if (!select_check && select_heldTime > 0) { select_heldTime = 0; }

if (start_check) { start_heldTime += 1; }
if (!start_check && start_heldTime > 0) { start_heldTime = 0; }