package project.root.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeStamp {
    private static SimpleDateFormat formatForDateNow = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSSSSSSS");

    public static String getTimeStamp() {

        return formatForDateNow.format(new Date());
    }
}
