import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'selected_services_state.dart';

class SelectedServicesCubit extends Cubit<SelectedServicesState> {
  SelectedServicesCubit() : super(SelectedServicesInitial());

  // will be changed depending on the api integration
  int numberOfSelectedServices = 0;

  void SelectService() {
    numberOfSelectedServices += 1;
    emit(SelectedServicesChange(numberOfSelectedServices));
  }

  void deSelectService() {
    numberOfSelectedServices -= 1;
    emit(SelectedServicesChange(numberOfSelectedServices));
  }


  void reset() {
    numberOfSelectedServices =0 ;
    emit(SelectedServicesChange(numberOfSelectedServices));
  }
}
