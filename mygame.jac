node Player:
    has int x = 0, y = 0;
    has int score = 0;

    can move(int dx, int dy):
        x = x + dx; y = y + dy;
        std.out("Moved to (" + str(x) + ", " + str(y) + ")");

    can collect(Item i):
        if i.x == x and i.y == y and not i.collected:
            i.collected = true;
            score = score + 1;
            std.out("Collected item at (" + str(i.x) + ", " + str(i.y) + ") - score=" + str(score));
        else:
            std.out("Nothing at (" + str(x) + ", " + str(y) + ")");

node Item:
    has int x = 0, y = 0;
    has bool collected = false;

graph main:
    spawn -> Player as p;
    spawn -> Item   as i1;
    spawn -> Item   as i2;
    spawn -> Item   as i3;

    i1.x = 2; i1.y = 1;
    i2.x = 3; i2.y = 2;
    i3.x = 4; i3.y = 0;

    p.move(2, 1);
    p.collect(i1);

    p.move(1, 1);
    p.collect(i2);

    p.move(1, -2);
    p.collect(i3);
