Map<String,decimal> currISOCodeAndExchangeRate = new map<string,decimal>();
currISOCodeAndExchangeRate.put('AUD', 0.73);
currISOCodeAndExchangeRate.put('CAD', 0.78);
currISOCodeAndExchangeRate.put('EUD', 1.13);
currISOCodeAndExchangeRate.put('INR', 0.013);
currISOCodeAndExchangeRate.put('NZD', 0.68);
system.debug('map of iso codes and exchange rates ' + currISOCodeAndExchangeRate);

decimal exchangevalue = currISOCodeAndExchangeRate.get('AUD');
system.debug('exchange rate for aud is ' + exchangevalue);

boolean containsSAD = currISOCodeAndExchangeRate.containsKey('SAD');
System.debug('dose contains sad ' + containsSAD);

Set<String> greaterCurrencySet = new Set<String>();
Set<String> othercurrencySet = new Set<String>();

for(string eachCurrency : currISOCodeAndExchangeRate.keySet()){
    decimal eachValue = currISOCodeAndExchangeRate.get(eachCurrency);
    if(eachValue >= 1){
        greaterCurrencySet.add(eachCurrency);
    } else {
        othercurrencySet.add(eachCurrency);
    }

    system.debug('greater than 1 rates are ' + greaterCurrencySet);
     system.debug('less than 1 rates are ' + othercurrencySet);
}
