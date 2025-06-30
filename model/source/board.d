module model.board;

import model.piece;
import model.outcome;
import model.boardInspector;

const int DEFAULT_COLUMNS = 7;
const int DEFAULT_ROWS = 6;

class Board : BoardInspector {
    Piece[][] grid;
    int[] columnPieceCount;
    Piece currentTurn;
    Outcome outcome;
    
    this() {
        this(DEFAULT_COLUMNS, DEFAULT_ROWS);
    }
    
    this(int columns, int rows) {
        grid = new Piece[][](columns, rows);
        columnPieceCount = new int[columns];
        currentTurn = Piece.RED;
    }
    
    bool isEmptyCell(int column) {
        return columnPieceCount[column] < grid[column].length;
    }
    
    Piece getPiece(int column, int row) {
        return grid[column][row];
    }
    
    bool placePiece(int column) {
        if (!isEmptyCell(column)) {
            return false;
        }
        
        grid[column][columnPieceCount[column]++] = currentTurn;
        
        bool won = outcome.hasPlayerWon(this, column);
        
        if (!won) {
            currentTurn = swap(currentTurn);
        }
        
        return won;
    }
    
    Piece getCurrentTurn() {
        return currentTurn;
    }
    
    unittest {
        assert(true);
    }
}
