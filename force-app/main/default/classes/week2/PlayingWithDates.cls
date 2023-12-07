public class PlayingWithDates {
    public void printDateOutput() {
        date todayDate = date.today();
        system.debug('todays date is ' + todayDate);


        date futureDate = date.newInstance(2789, 11, 5);
        system.debug('future date is ' + futureDate);

        date pastDate = date.newInstance(1459, 3, 4);
        system.debug('past date is ' + pastDate);

        integer dayInt = 9, monthInt = 9, yearInt = 1996;
        date randomDate = date.newInstance(yearInt, monthInt, dayInt);
        system.debug('random date is ' + randomDate);

        integer hourInt = 15, minInt = 8, secondInt = 55;
        datetime someTimeDate = datetime.newInstance(yearInt, monthInt, dayInt, hourInt, minInt, secondInt);
        system.debug('sometime day is ' + someTimeDate);

        system.debug('rightnow it is ' + Datetime.now());
    }

    public string getMonthName(date dt){
        string monthName = '';
        integer mont = dt.month();

        if(mont == 1){
            monthName = 'jan';
        } else if (mont == 2) {
            monthName = 'feb';
        } else if (mont == 3) {
            monthName = 'march';
        } else if (mont == 4) {
            monthName = 'apr';
        } else if (mont == 5) {
            monthName = 'may';
        } else if (mont == 6) {
            monthName = 'june';
        } else if (mont == 7) {
            monthName = 'july';
        } else if (mont == 8) {
            monthName = 'aug';
        } else if (mont == 9) {
            monthName = 'sep';
        } else if (mont == 10) {
            monthName = 'oct';
        }  else if (mont == 11) {
            monthName = 'nov';
        }  else {
            monthName = 'dec';
        }
        return monthName;
    }

    public string getMonthNameSwitch(date dt){
        string monthName = '';
        integer mont = dt.month();
        switch on mont {
            when 1 {
                monthName = 'jan';

            }
            when 2 {
                monthName = 'feb';

            } 
            when 3 {
                monthName = 'marc';

            } 
            when 4 {
                monthName = 'apr';
                
            } 
            when 5 {
                monthName = 'may';
                
            } 
            when 6 {
                monthName = 'jun';
                
            } 
            when 7 {
                monthName = 'jully';
                
            } 
            when 8 {
                monthName = 'aug';
                
            } 
            when 9 {
                monthName = 'sept';
                
            } 
            when 10 {
                monthName = 'oct';
                
            } 
            when 11 {
                monthName = 'nov';
                
            } 
            when 12 {
                monthName = 'dec';
                
            } 
        }
        return monthName;
    }
}