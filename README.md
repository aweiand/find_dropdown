# select_dialog Package

Package designed to select an item from a list, with the option to filter and even search the items online.

<img src="https://user-images.githubusercontent.com/16373553/94357714-95d4fc80-0071-11eb-8b99-9cff034a1ece.png" width="49.5%" /> <img src="https://user-images.githubusercontent.com/16373553/94357674-4098eb00-0071-11eb-8985-45edf99b9812.png" width="49.5%" />

## Versions
**Non Null Safety Version**: 1.2.3 or less

**Null Safety Version**: 2.0.0 or more

## pubspec.yaml
```yaml
select_dialog: <last version>
```

## import
```dart
import 'package:select_dialog/select_dialog.dart';
```

## Simple example
```dart
String ex1 = "No value selected";

SelectDialog.showModal<String>(
  context,
  label: "Simple Example",
  selectedValue: ex1,
  items: List.generate(50, (index) => "Item $index"),
  onChange: (String selected) {
    setState(() {
      ex1 = selected;
    });
  },
);
```

<<<<<<< HEAD
## Multiple items select
```dart
List<String> ex5 = [];

SelectDialog.showModal<String>(
  context,
  label: "Multiple Items Example",
  multipleSelectedValues: ex5,
  items: List.generate(50, (index) => "Item $index"),
  onMultipleItemsChange: (List<String> selected) {
    setState(() {
      ex5 = selected;
    });
  },
); 
```

### [MORE EXAMPLES](https://github.com/davidsdearaujo/select_dialog/tree/master/example)

=======

## Endpoint implementation (using [Dio package](https://pub.dev/packages/dio))
```dart
FindDropdown<UserModel>(
  label: "Nome",
  onFind: (String filter) async {
    var response = await Dio().get(
        "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
        queryParameters: {"filter": filter},
    );
    var models = UserModel.fromJsonList(response.data);
    return models;
  },
  onChanged: (UserModel data) {
    print(data);
  },
);
```

## Clear selected items
```dart
var countriesKey = GlobalKey<FindDropdownState>();

Column(
  children: [
    FindDropdown<String>(
      key: countriesKey,
      items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
      label: "País",
      selectedItem: "Brasil",
      showSearchBox: false,
      onChanged: (selectedItem) => print("country: $selectedItem"),
    ),
    RaisedButton(
      child: Text('Limpar Países'),
      color: Theme.of(context).primaryColor,
      textColor: Theme.of(context).primaryIconTheme.color,
      onPressed: () => countriesKey.currentState?.clear(),
    ),
  ],
)
``` 

## Change selected items
```dart
var countriesKey = GlobalKey<FindDropdownState>();

Column(
  children: [
    FindDropdown<UserModel>(
      label: "Nome",
      onFind: (String filter) => getData(filter),
      searchBoxDecoration: InputDecoration(
        hintText: "Search",
        border: OutlineInputBorder(),
      ),
      onChanged: (UserModel data) {
        print(data);
        countriesKey.currentState.setSelectedItem("Brasil");
      },
    ),
    FindDropdown<String>(
      key: countriesKey,
      items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
      label: "País",
      selectedItem: "Brasil",
      showSearchBox: false,
      onChanged: (selectedItem) => print("country: $selectedItem"),
    ),
  ],
)
``` 

### [MORE EXAMPLES](https://github.com/davidsdearaujo/find_dropdown/tree/master/example)

## Layout customization
You can customize the layout of the FindDropdown and its items. [EXAMPLE](https://github.com/davidsdearaujo/find_dropdown/tree/master/example#custom-layout-endpoint-example)

To **customize the FindDropdown**, we have the `dropdownBuilder` property, which takes a function with the parameters:
- `BuildContext context`: current context;
- `T item`: Current item, where **T** is the type passed in the FindDropdown constructor.

To **customize the items**, we have the `dropdownItemBuilder` property, which takes a function with the parameters:
- `BuildContext context`: current context;
- `T item`: Current item, where **T** is the type passed in the FindDropdown constructor.
- `bool isSelected`: Boolean that tells you if the current item is selected.
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2

# Attention
To use a template as an item type, you need to implement **toString**, **equals** and **hashcode**, as shown below:

```dart
class UserModel {
  final String id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  UserModel({this.id, this.createdAt, this.name, this.avatar});

  @override
  String toString() => name;

  @override
  operator ==(o) => o is UserModel && o.id == id;

  @override
  int get hashCode => id.hashCode^name.hashCode^createdAt.hashCode;

}
```
<<<<<<< HEAD


## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
=======
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
