

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_savings_app/features/home/bloc/home_state.dart';

class HomeBloc extends Cubit<HomeState>{
  HomeBloc(): super(HomeState());

  void updateTabIndex(int newIndex)async{
    emit(HomeState(tabIndex: newIndex));
  }

  void hideTodoList()async{
    emit(HomeState(hideTodo: true));
  }
}
