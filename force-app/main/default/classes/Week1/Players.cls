public class Players {
    public void playin() {
        string player1 = 'sane';
        string player2 = 'mane';
        string player3 = 'kane';
        string player4 = 'messi';
        string player5 = 'bale';

        system.debug('player 1 is ' + player1);
        system.debug('player 2 is ' + player2);
        system.debug('player 3 is ' + player3);
        system.debug('player 4 is ' + player4);
        system.debug('player 5 is ' + player5);

        integer p1length = player1.length();
        Integer p2length = player2.length();

        system.debug('player 1 length is ' + p1length);
        system.debug('player 2 length is ' + p2length);
        system.debug('player 3 length is ' + player3.length());
        system.debug('player 4 length is ' + player4.length());
        system.debug('player 5 length is ' + player5.length());

        string p1Cap = player1.toUpperCase();
        system.debug('player 1 caps ' + p1Cap);
    }
}