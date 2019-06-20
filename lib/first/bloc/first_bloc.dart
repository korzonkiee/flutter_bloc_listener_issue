import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  @override
  FirstState get initialState => InitialFirstState();

  @override
  Stream<FirstState> mapEventToState(
    FirstEvent event,
  ) async* {
    if (event is ButtonClick) {
      yield ButtonClicked();
    }
  }
}
