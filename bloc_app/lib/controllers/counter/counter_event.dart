part of 'counter_bloc.dart';

@immutable
class CounterEvent {}

class Increment extends CounterEvent{}

class Decrement extends CounterEvent{}

class Reset extends CounterEvent{}



