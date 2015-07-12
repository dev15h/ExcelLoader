/**
 * Created by margish on 5/24/15.
 */
package com.mk.utils {
import mx.collections.ArrayCollection;

public class FileUtils {
    public function FileUtils() {

    }

    public static const MAX_COL:String = "MAX_COL";

    public static const DATA:String = "DATA";

    public static function padZeroes(digits:*, places:int=2):String{
        var returnString:String = digits.toString();
        for (var i:int = 0; i < places - digits.toString().length; i++){
            returnString = "0" + returnString;
        }
        return returnString;
    }



    public static function csvToArrayCollection(csv:String):Object{
        var data:ArrayCollection = new ArrayCollection();
        var lines:Array = csv.split("\n");
        var maxCols:int = 0;
        for (var i:int = 0; i < lines.length; i++){
                var row:Object = new Object();
                var cells:Array = lines[i].split("\t");
                for (var j:int = 0; j < cells.length; j++){
                    var cellValue:String = cells[j];
                    if (cellValue.length != 0) {
                        row[padZeroes(j)] = cellValue.replace("zzzzz", "\n");
                    }
                    maxCols = (j>maxCols)?j:maxCols;
                }
                data.addItem(row);
        }
        return {DATA:data, MAX_COL:maxCols};
    }
}
}