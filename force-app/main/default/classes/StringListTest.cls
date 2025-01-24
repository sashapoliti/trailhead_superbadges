public class StringListTest {
    public static List<String> generateStringList (Integer inputNumber) {
        List<String> outputList = new List<String>();
        for (Integer i = 0; i < inputNumber; i++) {
            outputList.add('Test ' + i);
        }
    	return outputList;
    }
}