
import 'package:equatable/equatable.dart';

class HomeState extends Equatable{
  HomeState({
    this.tabIndex = 0,
    this.hideTodo = false,
  });

  final int tabIndex;
  final bool hideTodo;

  @override
  List<Object?> get props => [
    tabIndex,
    hideTodo,
  ];
}