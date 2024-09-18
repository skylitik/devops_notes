package DAY1;

public class MarsApplication {

    public static void main(String[] arguments) {

        MarsRobot spirit = new MarsRobot();
        System.out.println("Łazik spirit");
        spirit.status = "Eksploracja";
        spirit.speed = 2;
        spirit.temperature = -60;

        spirit.showAttributes();
        System.out.println("Zwiększenie prędkości do 3.");
        spirit.speed = 3;
        spirit.showAttributes();
        System.out.println("Zamiania temperatury na -90.");
        spirit.temperature = -90;
        spirit.showAttributes();
        System.out.println("Sprawdzenie temperatury.");
        spirit.checkTemperature();
        spirit.showAttributes();


        MarsRobot opportunity = new MarsRobot();
        System.out.println("=============================");
        System.out.println("Łazik opportunity");
        opportunity.status = "Eksploracja";
        opportunity.speed = 3;
        opportunity.temperature = -59;

        opportunity.showAttributes();
        System.out.println("Zwiększenie prędkości do 4.");
        opportunity.speed = 4;
        opportunity.showAttributes();
        System.out.println("Zamiania temperatury na -80.");
        opportunity.temperature = -80;
        opportunity.showAttributes();
        System.out.println("Sprawdzenie temperatury.");
        opportunity.checkTemperature();
        opportunity.showAttributes();
    }
}