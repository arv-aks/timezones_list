import 'package:flutter_test/flutter_test.dart';
import 'package:timezones_list/timezone_model.dart';
import 'package:timezones_list/timezones_list.dart';

void main() {
  group('TimezonesList', () {
    group('TimezonesList', () {
      test('getTimezonesList returns a list of TimezoneModel', () {
        final timezonesList = TimezonesList();
        final list = timezonesList.getTimezonesList();

        expect(
            list,
            isA<
                List<
                    TimezoneModel>>()); // Check if the result is a list of TimezoneModel
        expect(list, isNotEmpty); // Check if the list is not empty
      });

      test('TimezoneModel.fromJson creates a valid instance', () {
        final json = {
          "value": "UTC-11",
          "abbr": "U",
          "offset": -11,
          "isdst": false,
          "text": "(UTC-11:00) Coordinated Universal Time-11",
          "utc": [
            "Etc/GMT+11",
            "Pacific/Midway",
            "Pacific/Niue",
            "Pacific/Pago_Pago"
          ]
        };

        final timezoneModel = TimezoneModel.fromJson(json);

        expect(timezoneModel,
            isA<TimezoneModel>()); // Check if it's a valid TimezoneModel instance
        expect(timezoneModel.value, "UTC-11");
        expect(timezoneModel.abbr, "U");
        expect(timezoneModel.offset, -11);
        // Add more assertions to check other properties
      });
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
