# 🎮 Simple JacLang Text Games

Welcome to our collection of classic **text-based games written in JacLang**!  
This repository features three fun, beginner-friendly terminal games—**no external libraries required**.

---

> **Project Partners:**  
> - Didula Nethmina  
> - Dhananjaya Lakshan  
> - Sanjula Kethmini

---

## 🚀 Getting Started

1. **Clone this repository** or [download ZIP]([https://github.com/your-repo-link](https://github.com/Dhananjaya029/NeuroGen-Games.git)).
2. Make sure you have **JacLang** installed and configured.
3. Run each game using JacLang's interpreter or compiler, e.g.:
jac run tictactoe.jac
jac run adventure.jac
jac run guess_the_word.jac


---

## 📚 Game Overviews & How To Play

---

### 1. 🟦 Tic-Tac-Toe (Two Player)

- Classic two-player game.
- Players take turns entering the **row** and **column** (`0-2`) for their move.
- The first to get three in a row (horizontal, vertical, or diagonal) wins!

#### **Example Session**
Player X, enter row (0-2): 0
Player X, enter col (0-2): 2
| | X
| |
| |
Player O, enter row (0-2): 1
Player O, enter col (0-2): 1


---

### 2. 🗝️ Mini Adventure Game

- Explore three rooms: Hall, Kitchen, Dining Room.
- Move using commands: `go north`, `go east`, `go south`, `go west`.
- Pick up items with: `get key`, `get potion`.
- Avoid the monster—if you enter its room, the game ends!
- **Win** by collecting both the key and the potion, then entering the Dining Room.

#### **Example Inputs**
go east
You are in the Dining Room
You see a potion
Inventory: []

get potion
Potion picked up!

go west
go south
A monster got you... Game Over!


---

### 3. 💡 Guess the Word Game

- The program gives you an English clue.
- Type the word matching the clue.
- The game checks your answer and keeps score.
- Type `quit` anytime to exit.

#### **Example Session**
Clue: The animal that has a trunk and big ears.
Your answer: elephant
Correct!

Clue: A machine used for calculations and programming.
Your answer: computer
Correct!

Clue: A yellow fruit that monkeys like.
Your answer: apple
Wrong! The answer was 'banana'.

Game over! Your score: 2/3


---

## 🤝 Partners

- **Didula Nethmina**  
- **Dhananjaya Lakshan**  
- **Sanjula Kethmini**

---

## 📄 License

These JacLang games are free to use, modify, and share for learning and fun!  
Pull requests, feedback, and contributions are warmly welcomed.

---

**Enjoy coding and playing!**  
*— Team Didula, Dhananjaya, & Sanjula*
