import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  var date = DateTime.now();
  print(date.hour.toString() + " " + date.minute.toString());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do Application by mck',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class textField {
  String text;
  bool done = false;

  textField(this.text);

  void DoingTheTask() {
    if (this.done == false)
      this.done = true;
    else {
      this.done = false;
    }
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<textField> textFields = [];

  void newTextField(String text) {
    this.setState(() {
      if (text.length > 0) {
        textFields.add(new textField(text));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-Do Application by MCK')),
      body: Column(
        children: <Widget>[
          Expanded(child: textFieldsList(this.textFields)),
          TextInputWidget(this.newTextField)
        ],
      ),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  TextInputWidget(this.callback);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();

  _TextInputWidgetState getState() {
    return _TextInputWidgetState();
  }
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void addTask() {
    widget.callback(controller.text);
    FocusScope.of(context).unfocus();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: <Widget>[
      Expanded(
          child: TextField(
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message),
            labelText: "Write your task !",
            suffixIcon: IconButton(
              // icon: Icon(Icons.add),
              icon: Icon(Icons.clear),
              splashColor: Colors.red,
              onPressed: () {
                this.controller.clear();
              },
            )),
      )),
      Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            //    icon: Icon(Icons.clear),
            splashColor: Colors.red,
            onPressed: () {
              this.addTask();
            },
          )
        ],
      )
    ]));
  }
}

class textFieldsList extends StatefulWidget {
  final List<textField> listItems;

  textFieldsList(this.listItems);

  @override
  _textFieldsListState createState() => _textFieldsListState();
}

class _textFieldsListState extends State<textFieldsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listItems.length,
      itemBuilder: (context, index) {
        var item = this.widget.listItems[index];
        return Card(
            child: Row(children: <Widget>[
          Expanded(
              child: ListTile(
            title: Text(item.text),
            subtitle: Text("TASK " + (index + 1).toString()),
          )),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    this.widget.listItems.removeAt(index);
                  });
                },
              ),
              IconButton(
                icon: !item.done
                    ? Icon(Icons.check_box_outline_blank)
                    : Icon(Icons.check_box_outlined),
                onPressed: () {
                  setState(() {
                    this.widget.listItems[index].DoingTheTask();
                  });
                },
              )
            ],
          ),
        ]));
      },
    );
  }
}
