<<<<<<< HEAD
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
=======
[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg)](https://www.buymeacoffee.com/deivao)

# FindDropdown package - [[ver em português](https://github.com/davidsdearaujo/find_dropdown/blob/master/README-PT.md)]

Simple and robust FindDropdown with item search feature, making it possible to use an offline item list or filtering URL for easy customization.

![](https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/Screenshot_4.png?raw=true)

<img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/GIF_Simple.gif?raw=true" width="49.5%" /> <img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/GIF_Custom_Layout.gif?raw=true" width="49.5%" />
<img src="https://user-images.githubusercontent.com/16373553/94360038-f0c22000-0080-11eb-8687-d5e8af02ed7b.png" width="49.5%" />



## ATTENTION
If you use rxdart in your project in a version lower than 0.23.x, use version `0.1.7+1` of this package. Otherwise, you can use the most current version!

## Versions
**Null Safety Version**: 1.0.0 or more

**Non Null Safety Version**: 0.2.3 or less

**RxDart 0.23.x or less**: 0.1.7+1

## packages.yaml
```yaml
find_dropdown: <lastest version>
```

## Import
```dart
import 'package:find_dropdown/find_dropdown.dart';
```

## Simple implementation

```dart
FindDropdown(
  items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
  label: "País",
  onChanged: (String item) => print(item),
  selectedItem: "Brasil",
);
```

## Multiple selectable items
```dart
FindDropdown<String>.multiSelect(
  items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
  label: "País",
  onChanged: (List<String> items) => print(items),
  selectedItems: ["Brasil"],
);
```

## Validation
```dart
FindDropdown(
  items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
  label: "País",
  onChanged: (String item) => print(item),
  selectedItem: "Brasil",
  validate: (String item) {
    if (item == null)
      return "Required field";
    else if (item == "Brasil")
      return "Invalid item";
    else
      return null; //return null to "no error"
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
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
