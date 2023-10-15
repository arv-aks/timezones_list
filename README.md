# timezones_list

Inspired by timezones.json
## Installation


```bash
flutter pub add timezones_list
```

## Usage

```dart
import 'package:timezones_list/timezone_model.dart';
import 'package:timezones_list/timezones_list.dart';

# returns 'list of timezones model'
final List<TimezoneModel> result = TimezonesList().getTimezonesList();


# to access the json list 
final timezoneJson = TimezonesList.timezoneList;
print('-> $timezoneJson');


# result
[
   {
    "value": "Dateline Standard Time",
    "abbr": "DST",
    "offset": -12,
    "isdst": false,
    "text": "(UTC-12:00) International Date Line West",
    "utc": [
      "Etc/GMT+12"
    ]
  },
  {
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
  },...
]



```


## License

[MIT](https://choosealicense.com/licenses/mit/)