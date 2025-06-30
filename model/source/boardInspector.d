module model.boardInspector;

import model.piece;

interface BoardInspector {
    Piece getCurrentTurn();
}
