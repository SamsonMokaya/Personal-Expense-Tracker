import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTx);

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
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: "Title",
                hintText: "Enter the title",
              ),
              controller: titleController,
            ),
          ),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              //labelText: "Amount",
              hintText: "Amount",
            ),
            controller: amountController,
          ),
          FlatButton(
            onPressed: () {
              addNewTx(titleController.text, amountController.text);
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
