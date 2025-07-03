module connectFour.solution.outcomeImpl;

import connectFour.model.boardInspector;
import connectFour.model.outcome;

public class OutcomeImpl: Outcome {

    public bool hasPlayerWon(BoardInspector inspector, int column) {
        return false;
    }
    
    public bool isBoardFull(BoardInspector inspector) {
        return false;
    }
}
