import 'package:flutter/material.dart';

class Item {
  const Item(this.name);
  final String name;
}

class DropdownScreen extends StatefulWidget {
  State createState() => DropdownScreenState();
}

class DropdownScreenState extends State<DropdownScreen> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
      'Android',
    ),
    const Item(
      'Flutter',
    ),
    const Item(
      'ReactNative',
    ),
    const Item(
      'iOS',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<Item>(
        hint: Text("SIZE"),
        value: selectedUser,
        onChanged: (Item Value) {
          setState(() {
            selectedUser = Value;
          });
        },
        items: users.map((Item user) {
          return DropdownMenuItem<Item>(
            value: user,
            child: Row(
              children: <Widget>[
                Text(
                  user.name,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
