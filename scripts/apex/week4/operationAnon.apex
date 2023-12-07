list<decimal> ld = new List<decimal>();
ld.add(99.5);
ld.add(33.44);
ld.add(23.43);
decimal sum1 = OperationsHelper.sum(ld);
system.debug('sum1 ' + sum1);

decimal avg1 = OperationsHelper.avarage(ld);
system.debug('sum1 ' + avg1);

decimal hi1 = OperationsHelper.highest(ld);
system.debug('high1 ' + hi1);
decimal low1 = OperationsHelper.lowest(ld);
system.debug('low1 ' + low1);