
import 'package:equatable/equatable.dart';
import 'package:wtm_savings_app/features/account/models/user.dart';

class HomeState extends Equatable{
  HomeState({
    this.tabIndex = 0,
    this.hideTodo = false,
    this.userModel,
  });

  final int tabIndex;
  final bool hideTodo;
  final UserModel? userModel;

  @override
  List<Object?> get props => [
    tabIndex,
    hideTodo,
    userModel,
  ];

  HomeState copyWith({
    int? tabIndex,
    bool? hideTodo,
    UserModel? userModel,
  }){
    return HomeState(
      tabIndex: tabIndex ?? this.tabIndex,
      hideTodo: hideTodo ?? this.hideTodo,
      userModel: userModel ?? this.userModel,
    );
  }
}