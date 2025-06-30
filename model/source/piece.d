module model.piece;

enum Piece {
    RED, YELLOW
}

static public Piece swap(Piece p) {
    if (p == Piece.RED) {
        return Piece.YELLOW;
    }
    
    return Piece.RED;
}
    
unittest {
    assert(true);
}
