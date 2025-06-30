module terminal_app;

import std.stdio;

void main() {
    bool playAgain = true;
    do {
        writeHeader();
        writeMenu();
        promptMenuChoice();
    } while (playAgain);
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

void promptMenuChoice() {
    write("$: ");
    string input = stdin.readln();
}

void writeBoard() {
}

void promptPlayerMove() {
}


