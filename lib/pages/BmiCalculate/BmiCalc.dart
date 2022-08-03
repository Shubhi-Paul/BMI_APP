class BmiCalc {
  int weight;
  int age;
  int height;
  late double bmi;
  late String level;

  BmiCalc(this.height,this.weight,this.age) {
    calcBmi();
    calcLevel();
  }

  void calcBmi(){
    bmi = ((weight * 10000) / (height * height));
  }

  void calcLevel(){
    if (bmi <= 18.5){
      level = "!! UNDERWEIGHT !!";
    } else if (bmi <= 24.9 ){
      level = "NORMAL :)";
    }else if (bmi <= 29.9 ){
      level = "!! OVER WEIGHT !!";
    }else{
      level = "!! OBESE !!";
    }
  }

}