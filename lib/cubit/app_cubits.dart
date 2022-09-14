import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_dbtech/cubit/app_cubit_states.dart';
import 'package:flutter_bloc_dbtech/model/data_model.dart';
import 'package:flutter_bloc_dbtech/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({
    required this.data,
  }) : super(InititalState()) {
    emit(WelcomeState());
  }

  final DataServices data;

  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
