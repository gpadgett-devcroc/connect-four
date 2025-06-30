module model.outcome;

import model.boardInspector;

interface Outcome {
    bool hasPlayerWon(BoardInspector inspector, int column);
}
