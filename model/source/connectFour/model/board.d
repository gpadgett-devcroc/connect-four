module connectFour.model.board;

import std.string : format;

import connectFour.model.piece;
import connectFour.model.outcome;
import connectFour.model.boardInspector;

const int DEFAULT_COLUMNS = 7;
const int DEFAULT_ROWS = 6;

public enum Result {
    IN_PROGRESS, WIN, DRAW
}

public class IllegalMoveException : Exception {
    this(string message) {
        super(message);
    }
}

/**
 * @TODO: Class description
 * Authors: George Padgett gpadgett@devcroc.org
 */
public class Board : BoardInspector {
    Piece[][] grid;
    int[] columnPieceCount;
    Piece currentTurn;
    Outcome outcome;
    
    /**
     * Default constructor creates the Board with a default number
     * of columns and rows
     */
    this(Outcome outcome) {
        this(outcome, DEFAULT_COLUMNS, DEFAULT_ROWS);
    }
    
    /**
     * This constructor takes in user values for the number of columns
     * and rows
     * Params:
     *     columns = The number of columns the board will have
     *     rows    = The number of rows the board will have
     */
    this(Outcome outcome, int columns, int rows) {
        this.outcome = outcome;
        grid = new Piece[][](columns, rows);
        columnPieceCount = new int[columns];
        currentTurn = Piece.RED;
    }
    
    /**
     * isEmptyCell returns true if the cell is empty
     * Params: column = The index of the column to check
     * Returns: True if the cell specified by the column parameter
     *          is empty
     */
    bool isEmptyCell(int column) {
        return columnPieceCount[column] < grid[column].length;
    }
    
    /**
     * getPiece returns the Piece enum corresponding to the column
     * and row indices specified
     * Params:
     *     column = The column index
     *     row    = The row index
     * Returns: The Piece at the given column and row
     */
    Piece getPiece(int column, int row) {
        return grid[column][row];
    }
    
    /**
     * placePiece places a piece a given column. The Piece will sink
     * to the lowest row in the column where there is no previously
     * placed Piece beneath. The method return true if the Piece
     * completes a sequence of four in a row either horizontally,
     * vertically or diagonally
     * Params: column = The column index
     * Returns: True if the player who placed the piece has won.
     */
    Result placePiece(int column) {
        if (!isEmptyCell(column)) {
            throw new IllegalMoveException(format("Column %i is full.",
                column));
        }
        
        /* Add a piece to the top of the column */
        grid[column][columnPieceCount[column]++] = currentTurn;
        
        bool won = outcome.hasPlayerWon(this, column);
        
        if (!won) {
            if (outcome.isBoardFull(this)) {
                return Result.DRAW;
            }
        
            currentTurn = swap(currentTurn);
            
            return Result.IN_PROGRESS;
        }
        
        return Result.WIN;
    }
    
    /**
     * getCurrentTurn returns the Piece corresponding to the player
     * whose turn it is
     * Returns: The Piece which indicates which player's turn it is
     */
    Piece getCurrentTurn() {
        return currentTurn;
    }
    
    unittest {
        assert(true);
    }
}
