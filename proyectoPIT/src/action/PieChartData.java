package action;

import java.util.ArrayList;
import java.util.List;

public class PieChartData {

    private static final List<KeyValue> pieDataList;

    static {
    	
    	
    	
    	
    	
        pieDataList = new ArrayList<PieChartData.KeyValue>();
        pieDataList.add(new KeyValue("Medio", "8"));
        pieDataList.add(new KeyValue("Bajo", "2"));
        pieDataList.add(new KeyValue("Alto", "1"));
    }

    public static List<KeyValue> getPieDataList() {
        return pieDataList;
    }

    public static class KeyValue {
        String key;
        String value;

        public KeyValue(String key, String value) {
            super();
            this.key = key;
            this.value = value;
        }

        public String getKey() {
            return key;
        }

        public void setKey(String key) {
            this.key = key;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }

    }

}