class Timer {
    int savedTime;
    int totalTime;

    public Timer (int tempTotalTime) {
        totalTime = tempTotalTime;
    }


    void start(){
        savedTime = millis();
    }

    boolean isFinished(){
        int passedTime = millis() - savedTime;
        if (passedTime > totalTime){
            return true;
        } else {
            return false;
        }
    }

    void display(){
        println( (millis() / 1000) + " seconds has passed!");

    }
}
