

class Watch {

  // Attributes
  int _hour = 0;
  int _minute = 0;
  int _second = 0;

  // Constructor
  Watch();

  // Getter
  int get hour {
    return _hour;
  }

  int get minute {
    return _minute;
  }

  int get second {
    return _second;
  }

  // Setter

  set hour (value){
    this._hour = value;
  }

  set minute (value){
    this._minute = value;
  }

  set second (value){
    this._second = value;
  }


  // List of Methods to add here
  // addAMinute & addASecond & addAnHour & clone(watch)

  void _addAMinute(){
    if(minute == 60){
      minute = 0;
      _addAnHour();
    }
    else
      minute += 1;
  }

  void addASecond(){
    if(second == 60){
      second = 0;
      _addAMinute();
    }
    else 
      second += 1;
  }

  void _addAnHour(){
    if(hour < 23)
      hour += 1;
    else
      hour = 0;
  }

  void clone (Watch watch){
    hour = watch.hour;
    minute = watch.minute;
    second = watch.second;
  }


  void display(){
    print("${hour}h:${minute}min: ${second}s");
  }

}


void main() {
  Watch watch = new Watch();
  Watch watch2 = new Watch();

  watch.hour = 15;
  watch.minute = 34;
  watch.second = 23;

  watch2.clone(watch);

  for(int i=0; i < 2000000000; i++){
    watch2.addASecond();
    for(int j=0; j < 400000000; j++);
    watch2.display();
  }
}