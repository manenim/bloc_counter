import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state == 0) return;
    emit(state - 1);
  }
}
