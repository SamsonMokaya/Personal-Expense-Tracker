import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Title",
              ),
              controller: titleController,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              //labelText: "Amount",
              hintText: "Amount",
            ),
            controller: amountController,
          ),
          FlatButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);
            },
            child: Text(
              "Add Transaction",
            ),
            textColor: Colors.green,
            //color: Colors.green,
          )
        ]),
      ),
    );
  }
}
