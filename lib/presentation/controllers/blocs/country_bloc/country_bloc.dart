import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_event.dart';
part 'country_state.dart';
part 'country_bloc.freezed.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountryState.initial()) {
    on<_Change>((event, emit) {
      emit(
        state.copyWith(country: event.country),
      );
    });
  }
}
