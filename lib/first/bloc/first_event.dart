import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FirstEvent extends Equatable {
  FirstEvent([List props = const []]) : super(props);
}

class ButtonClick extends FirstEvent {}
