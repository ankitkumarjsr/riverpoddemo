class CounterState{
  int value = 0;
  CounterState({required this.value});

  CounterState _updateCounterState(int latestValue){
    return CounterState(value: latestValue);
  }

  CounterState increaseValue(){
    return _updateCounterState(value+1);
  }
  CounterState decreaseValue(){
    return _updateCounterState(value-1);
  }



}