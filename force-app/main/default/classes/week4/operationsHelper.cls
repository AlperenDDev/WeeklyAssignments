public class operationsHelper {
    public static decimal sum(list<decimal> listDecimal){
        decimal ret; 
        if(listDecimal == null || listDecimal.isEmpty()){
            system.debug('please provide some values to do the op');
        }else{
            ret = 0;
            for(decimal eachDecimal : listDecimal){
                ret += eachDecimal;
            }
        }
        return ret;
    }

    public static decimal avarage(List<Decimal> listDecimal){
        decimal ret;
        decimal sumList = sum(listDecimal);
        if(sumList != null){
            integer sizeOfList = listDecimal.size();
            ret = sumList/sizeOfList;
        }
        return ret;
    }

    public static decimal highest(List<Decimal> listDecimal){
        decimal ret;
        if(listDecimal == null || listDecimal.isEmpty()){
            system.debug('please provide some values to do the op');
        }else{
            ret = 0;
            listDecimal.sort();
            integer size = listDecimal.size();
            ret = listDecimal.get(size - 1);
        }
        return ret;
    }

    public static decimal lowest(List<Decimal> listDecimal){
        decimal ret;
        if(listDecimal == null || listDecimal.isEmpty()){
            system.debug('please provide some values to do the op');
        }else{
            ret = 0;
            listDecimal.sort();
            ret = listDecimal.get(0);
        }
        return ret;
    }

}