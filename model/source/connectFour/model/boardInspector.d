module connectFour.model.boardInspector;

import connectFour.model.piece;

/**
 * @TODO: Interface description
 */
public interface BoardInspector {
    /**
     * @TODO: Method description
     */
    Piece getCurrentTurn();
    
    /**
     * getPiece returns the Piece enum corresponding to the column
     * and row indices specified
     * Params:
     *     column = The column index
     *     row    = The row index
     * Returns: The Piece at the given column and row
     */
    Piece getPiece(int column, int row);
}
