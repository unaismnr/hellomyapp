part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.change(
    Country country,
  ) = _Change;
}
