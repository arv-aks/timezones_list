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



```


## License

[MIT](https://choosealicense.com/licenses/mit/)