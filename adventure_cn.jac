def show_status() {
    print('\n---------------------');
    print(f"'You are in the '{current_room}");
    if ('item' in rooms[ current_room ]) {
        print(f"'You see a '{rooms[ current_room ][ 'item' ]}");
    }
    print(f"'Inventory: '{inventory}");
    print('---------------------');
}


with entry {
    rooms =

        {'Hall' : {'south' : 'Kitchen' , 'east' : 'Dining Room' , 'item' : 'key' } , 'Kitchen' : {'north' : 'Hall' , 'item' : 'monster' } , 'Dining Room' : {'west' : 'Hall' , 'item' : 'potion' } };
    current_room = 'Hall';
    inventory = [];
    print('Welcome to the Mini Adventure Game!');
    print('Commands: go [direction], get [item], quit');
    while True { show_status(); move = input('> ').lower().split(); if (len(move) == 0) { print('No command entered.'); continue; } if {
        (move[ 0 ] == 'go')
        if (len(move) < 2) {
            print('Go where?');
        } elif (move[ 1 ] in rooms[ current_room ]) { current_room =
            rooms[ current_room ][ move[ 1 ] ]; if (('item' in rooms[ current_room ])
        and (rooms[ current_room ][ 'item' ] == 'monster')
        ) { print('A monster got you... Game Over!'); break; } }
            else
            {
            print("You can't go that way.");
            }

    } elif {
        (move[ 0 ] == 'get')
        if (len(move) < 2) {
            print('Get what?');
        } elif (('item' in rooms[ current_room ])
        and (move[ 1 ] == rooms[ current_room ][ 'item' ])
        ) {
            inventory.append(move[ 1 ]);
            print(f"{move[ 1 ].capitalize()}' picked up!'");
            del (rooms[ current_room ][ 'item' ], ) ;
        }
            else
            {
            print(f"'No '{move[ 1 ]}' here.'");
            }

    } elif (move[ 0 ] == 'quit') { print('Thanks for playing!'); break; }
        else
        {
        print('Invalid command.');
        }
       if ((current_room == 'Dining Room')
    and ('key' in inventory)
    and ('potion' in inventory)
    ) { print('You found the key and the potion and reached the Dining Room. You win!'); break; } }
}

