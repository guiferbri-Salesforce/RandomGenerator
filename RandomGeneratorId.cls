public with sharing class RandomGeneratorId {
    public static List<String> base62chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('');

    /**
    * @description Generate identifier base62 with indicated length
    * @param Integer length 
    * @return string 
    **/
    public static string getIdBase62(Integer length) {
        List<String> result = new List<String>(length);
        for (Integer i=0; i<length; i++) {
            Integer randomNumber = Integer.valueof((Math.random() * 62));
            result.add(base62chars[randomNumber]);
        }
        return String.join(result, '');
    }
    
    /**
    * @description Generate identifier base36 with indicated length
    * @param Integer length 
    * @return string 
    **/
    public static string getIdBase36(Integer length) {
        List<String> result = new List<String>(length);
        for (Integer i=0; i<length; i++) {
            Integer randomNumber = Integer.valueof((Math.random() * 36));
            result.add(base62chars[randomNumber]);
        }
        return String.join(result, '');
    }
}