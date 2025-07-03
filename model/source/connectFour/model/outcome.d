module connectFour.model.outcome;

import connectFour.model.boardInspector;

/**
 * The Outcome interface is to implemented as the challenge to the developer.
 * The class implementation decides whether a player who has played their
 * piece has won the game or if it has drawn
 * Authors: George Padgett gpadgett@devcroc.org
 */
public interface Outcome {
    /**
     * hasPlayerWon returns true if the player who played the piece has
     * won the game.
     * Params: inspector = The inspector allows the developers of the
     *                     class implementation of the Outcome interface
     *                     to get information about the board
     *         column    = The column parameter indicates which column
     *                     the player placed their piece in the turn
     *                     being played
     */
    public bool hasPlayerWon(BoardInspector inspector, int column);
    
    /**
     * @TODO: Method description
     */
    public bool isBoardFull(BoardInspector inspector);
}
