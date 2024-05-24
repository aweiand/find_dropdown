import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:select_dialog/select_dialog.dart';
=======
import 'package:find_dropdown/find_dropdown.dart';
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2

import 'user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
<<<<<<< HEAD
  String? ex1;
  String? ex2;
  UserModel? ex3;
  UserModel? ex4;
  List<String> ex5 = [];
  String? ex6;
  final ex6Controller = TextEditingController(text: "20");

  final modelItems = List.generate(
    50,
    (index) => UserModel(
      avatar: "https://i.imgur.com/lTy4hiN.jpg",
      name: "Deivão $index",
      id: "$index",
      createdAt: DateTime.now(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Dialog Example")),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text(ex1 ?? "Simple Example"),
                onPressed: () {
                  SelectDialog.showModal<String>(
                    context,
                    label: "Simple Example",
                    titleStyle: TextStyle(color: Colors.brown),
                    showSearchBox: false,
                    selectedValue: ex1,
                    backgroundColor: Colors.amber,
                    items: List.generate(50, (index) => "Item $index"),
                    onChange: (String selected) {
                      setState(() {
                        ex1 = selected;
                      });
                    },
                  );
                },
              ),
              ElevatedButton(
                child: Text(ex2 ?? "Model Example"),
                onPressed: () {
                  SelectDialog.showModal<UserModel>(
                    context,
                    alwaysShowScrollBar: true,
                    label: "Model Example",
                    searchBoxDecoration: InputDecoration(hintText: "Example Hint"),
                    items: modelItems,
                    onChange: (UserModel selected) {
                      setState(() {
                        ex2 = selected.name;
                      });
                    },
                  );
                },
              ),
              ElevatedButton(
                child: Text(ex3?.name ?? "Item Builder Example"),
                onPressed: () {
                  SelectDialog.showModal<UserModel>(
                    context,
                    label: "Item Builder Example",
                    items: modelItems,
                    selectedValue: ex3,
                    itemBuilder: (BuildContext context, UserModel item, bool isSelected) {
                      return Container(
                        decoration: !isSelected
                            ? null
                            : BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(color: Theme.of(context).primaryColor),
                              ),
                        child: ListTile(
                          leading: CircleAvatar(backgroundImage: item.avatar == null ? null : NetworkImage(item.avatar!)),
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
              ElevatedButton(
                child: Text(ex4?.name ?? "Online Example"),
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
              ElevatedButton(
                child: Text(
                  ex5.isEmpty ? "Multiple Items Example" : ex5.join(", "),
                ),
                onPressed: () {
                  SelectDialog.showModal<String>(
                    context,
                    label: "Multiple Items Example",
                    multipleSelectedValues: ex5,
                    items: List.generate(50, (index) => "Item $index"),
                    itemBuilder: (context, item, isSelected) {
                      return ListTile(
                        trailing: isSelected ? Icon(Icons.check) : null,
                        title: Text(item),
                        selected: isSelected,
                      );
                    },
                    onMultipleItemsChange: (List<String> selected) {
                      setState(() {
                        ex5 = selected;
                      });
                    },
                    okButtonBuilder: (context, onPressed) {
                      return Align(
                        alignment: Alignment.centerRight,
                        child: FloatingActionButton(
                          onPressed: onPressed,
                          child: Icon(Icons.check),
                          mini: true,
                        ),
                      );
                    },
                  );
                },
              ),
              ElevatedButton(
                child: Text(ex6 ?? "Find Controller Example"),
                onPressed: () {
                  SelectDialog.showModal<UserModel>(
                    context,
                    findController: ex6Controller,
                    alwaysShowScrollBar: true,
                    label: "Scroll Controller Example",
                    searchBoxDecoration: InputDecoration(hintText: "Example Hint"),
                    items: modelItems,
                    onChange: (UserModel selected) {
                      setState(() {
                        ex6 = selected.name;
                      });
                    },
                  );
                },
              ),
            ],
          ),
=======
  var countriesKey = GlobalKey<FindDropdownState>();
  var nameKey = GlobalKey<FindDropdownState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FindDropdown Example")),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            FindDropdown(
              items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
              label: "País",
              onChanged: (item) {
                print(item);
                countriesKey.currentState?.setSelectedItem(<String>[]);
              },
              selectedItem: "Brasil",
              showSearchBox: false,
              labelStyle: TextStyle(color: Colors.blue),
              backgroundColor: Colors.redAccent,
              titleStyle: TextStyle(color: Colors.greenAccent),
              validate: (String? item) {
                if (item == null)
                  return "Required field";
                else if (item == "Brasil")
                  return "Invalid item";
                else
                  return null;
              },
            ),
            FindDropdown<String>.multiSelect(
              key: countriesKey,
              items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
              label: "Países",
              selectedItems: ["Brasil"],
              onChanged: (selectedItems) => print("countries: $selectedItems"),
              showSearchBox: false,
              labelStyle: TextStyle(color: Colors.blue),
              titleStyle: TextStyle(color: Colors.green),
              dropdownItemBuilder: (context, item, isSelected) {
                return ListTile(
                  title: Text(item.toString()),
                  trailing: isSelected ? Icon(Icons.check) : null,
                  selected: isSelected,
                );
              },
              okButtonBuilder: (context, onPressed) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(child: Icon(Icons.check), onPressed: onPressed, mini: true),
                );
              },
              validate: (List<String>? items) {
                print("VALIDATION: $items");
                String? response;
                if (items == null || items.isEmpty) {
                  response = "Required field";
                } else if (items.contains("Brasil")) {
                  response = "'Brasil' não pode ser selecionado.";
                }
                print(response);
                return response;
              },
            ),
            FindDropdown<UserModel>(
              key: nameKey,
              label: "Nome",
              onFind: (String filter) => getData(filter),
              searchBoxDecoration: InputDecoration(hintText: "Search", border: OutlineInputBorder()),
              onChanged: (UserModel? data) => print(data),
            ),
            SizedBox(height: 25),
            FindDropdown<UserModel>(
              label: "Personagem",
              onFind: (String filter) => getData(filter),
              onChanged: (UserModel? data) => print(data),
              dropdownBuilder: (BuildContext context, UserModel? item) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).dividerColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: (item?.avatar == null)
                      ? ListTile(leading: CircleAvatar(), title: Text("No item selected"))
                      : ListTile(
                          leading: CircleAvatar(backgroundImage: NetworkImage(item!.avatar)),
                          title: Text(item.name),
                          subtitle: Text(item.createdAt.toString()),
                        ),
                );
              },
              dropdownItemBuilder: (BuildContext context, UserModel item, bool isSelected) {
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
                    leading: CircleAvatar(backgroundImage: NetworkImage(item.avatar)),
                  ),
                );
              },
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Limpar Países'),
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).primaryIconTheme.color,
                    onPressed: () => countriesKey.currentState?.clear()),
                SizedBox(width: 25),
                RaisedButton(
                    child: Text('Limpar Nome'),
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).primaryIconTheme.color,
                    onPressed: () => nameKey.currentState?.clear()),
              ],
            ),
          ],
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
        ),
      ),
    );
  }

<<<<<<< HEAD
  Future<List<UserModel>> getData(String filter) async {
    var response = await Dio().get(
      "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
      queryParameters: {
        "filter": filter
      },
=======
  Future<List<UserModel>> getData(filter) async {
    var response = await Dio().get(
      "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
      queryParameters: {"filter": filter},
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
    );

    var models = UserModel.fromJsonList(response.data);
    return models;
  }
}
