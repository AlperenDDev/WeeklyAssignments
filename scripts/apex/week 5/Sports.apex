// a. sportList
List<String> sportList = new List<String>();

// Check if the list is empty
if (sportList.isEmpty()) {
    System.debug('LIST IS EMPTYYYY');
} else {
    System.debug('LIST IS NOT EMPTY');
}

// Add sports to the list
sportList.addAll(new List<String>{
    'Football', 'Basketball', 'Tennis', 'Golf', 'Cricket',
    'Baseball', 'Hockey', 'Soccer', 'Volleyball', 'Rugby'
});

// Check if each sport is played with a ball
for (String sport : sportList) {
    if (sport.containsIgnoreCase('ball')) {
        System.debug(sport + ' is played with Ball');
    } else {
        System.debug(sport + ' is NOT played with ball');
    }
}

// Create lists for sports played with and without a ball
List<String> ballSports = new List<String>();
List<String> nonBallSports = new List<String>();

// Categorize sports based on whether they are played with a ball
for (String sport : sportList) {
    if (sport.containsIgnoreCase('ball')) {
        ballSports.add(sport);
    } else {
        nonBallSports.add(sport);
    }
}

// Print the categorized lists and their sizes
System.debug('Sports Played with Ball: ' + ballSports + ', Size: ' + ballSports.size());
System.debug('Sports NOT Played with Ball: ' + nonBallSports + ', Size: ' + nonBallSports.size());

// Find and print the index number of a favorite sport
String favoriteSport = 'Basketball';
Integer index = sportList.indexOf(favoriteSport);
System.debug('Index of Favorite Sport (' + favoriteSport + '): ' + index);

String leastFavoriteSport = 'Golf';
List<String> updatedSportList = new List<String>();

// Copy elements from the original list to the updated list, excluding the least favorite sport
for (String sport : sportList) {
    if (!sport.equalsIgnoreCase(leastFavoriteSport)) {
        updatedSportList.add(sport);
    }
}

// Update the sportList reference to the updated list
sportList = updatedSportList;

System.debug('Sport List after Removing Least Favorite (' + leastFavoriteSport + '): ' + sportList + ', Size: ' + sportList.size());

// b. operatingSystemSet
Set<String> operatingSystemSet = new Set<String>{'Windows', 'macOS'};

// Add more operating systems to the set
operatingSystemSet.addAll(new Set<String>{
    'Linux', 'Android', 'iOS', 'Chrome OS', 'FreeBSD', 'Ubuntu', 'Debian', 'Fedora'
});

// Print the size of the set
System.debug('Size of Operating System Set: ' + operatingSystemSet.size());

// Concatenate all operating systems into a final string
String finalString = 'Operating systems added in set are ' + String.join(new List<String>(operatingSystemSet), ' & ');
System.debug('FINAL STRING ⇒ ' + finalString);
System.debug('Size of FINAL STRING is ' + finalString.length());
