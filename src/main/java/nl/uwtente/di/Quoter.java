package nl.uwtente.di;

/**
 * Created by Martijn on 22-4-2014.
 */
public class Quoter {

    public double getBookPrice(String unit){
        if (unit.equals("1")){
            return 10;
        }
        else if (unit.equals("2")){
            return 45;
        }
        else if (unit.equals("3")){
            return 20;
        }
        else if (unit.equals("4")){
            return 35;
        }
        else if (unit.equals("5")){
            return 50;
        }
        else {
            return 0;
        }
    }
}
