set<string> fruitSet = new set<string>();

fruitSet.add('orange');
fruitSet.add('grapes');
fruitSet.add('apple');
fruitSet.add('mango');
fruitSet.add('banana');
system.debug('fruit basket ' + fruitSet);

for(string eachFruit : fruitSet){
    system.debug(eachFruit);
}

integer fruitSetSize = fruitSet.size();
system.debug('fruit size is ' + fruitSetSize);

fruitSet.add('apricot');
system.debug(fruitSet);

Boolean containsApricot = fruitSet.contains('apricot');
system.debug('contains apricot ' + containsApricot);

system.debug('check if its emoty ' + fruitSet.isEmpty());
system.debug('check if its not empty' + !fruitSet.isEmpty());