<<<<<<< HEAD
# select_dialog Package Examples

## Simple Example
```dart
RaisedButton(
  child: Text(ex1),
  onPressed: () {
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
  },
),
```

## Model Example
```dart
RaisedButton(
  child: Text(ex2),
  onPressed: () {
    SelectDialog.showModal<UserModel>(
      context,
      label: "Model Example",
      items: modelItems,
      onChange: (UserModel selected) {
        setState(() {
          ex2 = selected.name;
        });
      },
    );
  },
),
```

## Item Builder Example
```dart
RaisedButton(
  child: Text(ex3.name),
  onPressed: () {
    SelectDialog.showModal<UserModel>(
      context,
      label: "Item Builder Example",
      items: modelItems,
      selectedValue: ex3,
      itemBuilder:
          (BuildContext context, UserModel item, bool isSelected) {
        return Container(
          decoration: !isSelected
              ? null
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item.avatar),
            ),
            selected: isSelected,
            title: Text(item.name),
            subtitle: Text(item.createdAt.toString()),
          ),
        );
      },
      onChange: (selected) {
        setState(() {
          ex3 = selected;
        });
      },
    );
  },
),
```

## Model Example
```dart
RaisedButton(
  child: Text(ex4.name),
  onPressed: () {
    SelectDialog.showModal<UserModel>(
      context,
      label: "Online Example",
      selectedValue: ex4,
      onFind: (String filter) => getData(filter),
      onChange: (UserModel selected) {
        setState(() {
          ex4 = selected;
        });
      },
    );
  },
),
```

=======
## Simple Example
```dart
FindDropdown(
  items: ["Brasil", "Itália", "Estados Undos", "Canadá"],
  label: "País",
  onChanged: print,
  selectedItem: "Brasil",
),
```

<img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/GIF_Simple.gif?raw=true" width="49.5%"/> <img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/Screenshot_1.png?raw=true" width="49.5%"/>

## Validation Example
```dart
FindDropdown(
  items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
  label: "País",
  onChanged: print,
  selectedItem: "Brasil",
  validate: (String item) {
    if (item == null)
      return "Required field";
    else if (item == "Brasil")
      return "Invalid item";
    else
      return null;
  },
),
```
![](https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/Screenshot_5.png?raw=true)

## Online Endpoint Example
```dart
FindDropdown<UserModel>(
  label: "Nome",
  onChanged: (UserModel data) {
    print(data);
  },
  onFind: (String filter) async {
    var response = await Dio().get(
        "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
        queryParameters: {"filter": filter},
    );
    var models = UserModel.fromJsonList(response.data);
    return models;
  },
);
```
<img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/GIF_Endpoint.gif?raw=true" width="49.5%"/> <img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/Screenshot_2.png?raw=true" width="49.5%"/>

## Custom Layout Endpoint Example
```dart
FindDropdown<UserModel>(
  label: "Personagem",
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
  dropdownBuilder: (BuildContext context, UserModel item) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: (item?.avatar == null)
          ? ListTile(
              leading: CircleAvatar(),
              title: Text("No item selected"),
            )
          : ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.avatar),
              ),
              title: Text(item.name),
              subtitle: Text(item.createdAt.toString()),
            ),
    );
  },
  dropdownItemBuilder:  (BuildContext context, UserModel item, bool isSelected) {
    return Container(
      decoration: !isSelected
          ? null
          : BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
      child: ListTile(
        selected: isSelected,
        title: Text(item.name),
        subtitle: Text(item.createdAt.toString()),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(item.avatar),
        ),
      ),
    );
  },
);
```
<img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/GIF_Custom_Layout.gif?raw=true" width="49.5%"/> <img src="https://github.com/davidsdearaujo/find_dropdown/blob/master/screenshots/Screenshot_3.png?raw=true" width="49.5%"/>
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
