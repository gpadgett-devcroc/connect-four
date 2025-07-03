module connectFour.model.piece;

/**
 * The Piece enum is used to identify either a red or yellow Connect Four
 * piece and by implication the player
 */
enum Piece {
    RED, YELLOW
}

/**
 * swap returns a RED Piece if a YELLOW one is passed as a parameter.
 * Vice versa, a YELLOW Piece is returned if a RED Piece is passed.
 * Params: p = The Piece to swap
 * Returns: The swapped Piece in replace of the param Piece
 */
static public Piece swap(Piece p) {
    if (p == Piece.RED) {
        return Piece.YELLOW;
    }
    
    return Piece.RED;
}
    
unittest {
    assert(true);
}
