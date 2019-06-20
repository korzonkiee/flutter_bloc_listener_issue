import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FirstState extends Equatable {
  FirstState([List props = const []]) : super(props);
}

class InitialFirstState extends FirstState {}

class ButtonClicked extends FirstState {}
