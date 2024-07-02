part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState({
    required Country country,
  }) = _CountryState;

  factory CountryState.initial() => CountryState(
        country: CountryParser.parseCountryCode('IN'),
      );
}
