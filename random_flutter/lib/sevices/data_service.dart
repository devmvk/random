import 'dart:math';

class DataService{

  //* a function which can be seen as REST api call which return an integer
  Future<int> getValue() async{
    await Future.delayed(Duration(milliseconds: 1)); //* Just to replicate an async call
    return Random().nextInt(5); //* return a random non-negative integer less-than 5. i.e., "0, 1, 2, 3, 4"
  }

}