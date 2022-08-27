part of 'selected_services_cubit.dart';

@immutable
abstract class SelectedServicesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectedServicesInitial extends SelectedServicesState {}

class SelectedServicesChange extends SelectedServicesState {
  final int numberOfSelectedServices;

  SelectedServicesChange(this.numberOfSelectedServices);

  @override
  List<Object?> get props => [numberOfSelectedServices];
}
