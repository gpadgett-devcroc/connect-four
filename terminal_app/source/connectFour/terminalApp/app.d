module connectFour.terminalApp;

import std.stdio;

import connectFour.model.board;
import connectFour.solution.outcomeImpl;

void main() {
    bool promptAgain = true;
    do {
        writeHeader();
        writeMenu();
        promptAgain = promptMenuChoice();
    } while (promptAgain);
}

void writeHeader() {
    writeln("Connect Four Terminal App");
    writeln("By DevCroc 2025");
    writeln();
}

void writeMenu() {
    writeln("Enter `play`: To Play The Game");
    writeln("Enter `howto`: For Instructions On How To Play The Game");
    writeln("Enter `exit`: To Exit The Game And Return To The Terminal");    
    writeln();
}

bool promptMenuChoice() {
    write("$: ");
    string input = stdin.readln();
    
    if (input == "play") {
        playGame();
    } else if (input == "howto") {
        writeHowTo();
    } else if (input == "exit") {
        return false;
    }
    
    return true;
}

void playGame() {
    Board board = new Board(new OutcomeImpl());
    writeBoard();
    promptPlayerMove();
}

void writeBoard() {
}

void promptPlayerMove() {
}

void writeHowTo() {
}
