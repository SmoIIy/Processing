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
        fill(0);
        int t;
        t = ((millis() / 1000) /*+ " seconds has passed!"*/);
        text(t, 35, height - 80);
    }
}
