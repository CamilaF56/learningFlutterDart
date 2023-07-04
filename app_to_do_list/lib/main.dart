import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do List",
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  late List<Item> items;

  HomePage({super.key}) {
    items = [];
    // items.add(Item(name: "Item 1", done: false));
    // items.add(Item(name: "Item 2", done: true));
    // items.add(Item(name: "Item 3", done: false));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = TextEditingController();

  void add() {
    if (newTaskCtrl.text.isEmpty) return;

    setState(() {
      widget.items.add(
        Item(name: newTaskCtrl.text, done: false),
      );
    });
    newTaskCtrl.text = "";
    save();
  }

  void remove(int index) {
    setState(() {
      widget.items.removeAt(index);
      save();
    });
  }

  Future load() async {
    // Função de requisição para o shared_preferences
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data'); // 'data' é uma chave

    if (data != null) {
      Iterable decoded = jsonDecode(data); // Iterable = Pois faz interações
      List<Item> result = decoded.map((e) => Item.fromJson(e)).toList();
      setState(() {
        widget.items = result;
      });
    }
  }

  save() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', jsonEncode(widget.items));
  }

  _HomePageState() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(color: Colors.white24),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return Dismissible(
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.red.withOpacity(0.9),
              child: const Align(
                heightFactor: 10.0,
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Excluir",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.highlight_remove_sharp,
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
            ),
            onDismissed: (direction) {
              remove(index);
            },
            key: Key(item.name),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.black,
              title: Text(item.name),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value!;
                  save();
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
    );
  }
}
