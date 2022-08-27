import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'google_map_state.dart';

class GoogleMapCubit extends Cubit<GoogleMapState> {
  GoogleMapCubit() : super(GoogleMapInitial());

  void ChangeLocation() {
    emit(GoogleMapChangeLcoation());
  }

  @override
  void onChange(Change<GoogleMapState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}
