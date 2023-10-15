
import 'package:flutter_test/flutter_test.dart';
import 'package:timezones_list/timezone_model.dart';
import 'package:timezones_list/timezones_list.dart';

void main() {
  group('TimezonesList', () {
    test('getTimezonesList should return a list of TimezoneModel', () {
      // Arrange
      final timezonesList = TimezonesList();

      // Act
      final List<TimezoneModel> result = timezonesList.getTimezonesList();

      // Assert
      expect(result, isA<List<TimezoneModel>>());
    });

    test('getTimezonesList should return a valid list of TimezoneModel', () {
      // Arrange
      final timezonesList = TimezonesList();

      // Act
      final result = timezonesList.getTimezonesList();

      // Assert
      expect(result, isA<List<TimezoneModel>>());

      // Check if each item in the list is a valid TimezoneModel
      for (final timezoneModel in result) {
        expect(timezoneModel, isA<TimezoneModel>());
      }
    });

    test('getTimezonesList should return the correct list of TimezoneModel',
        () {
      // Arrange
      final timezonesList = TimezonesList();

      // Act
      final result = timezonesList.getTimezonesList();

      // Assert
      expect(result, isA<List<TimezoneModel>>());
      expect(
          result.length, 107); // Assuming there are two items in the JSON data

      // Check if the TimezoneModel objects match the expected values
      expect(result[0].abbr, 'DST');
      expect(result[0].isdst, false);
      expect(result[1].abbr, 'U');
      expect(result[1].isdst, false);
    });
  });
}
