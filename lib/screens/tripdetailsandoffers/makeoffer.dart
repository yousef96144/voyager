import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class NewTransaction extends StatefulWidget{

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {

  final titleController=TextEditingController();
  final amountController=TextEditingController();
  DateTime _recentDate;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(decoration:
              InputDecoration(
                  labelText: 'Title'
              ),
                controller: titleController,

              ),
              TextField(decoration:
              InputDecoration(
                  labelText: 'Amount'
              ),
                controller: amountController,
                keyboardType: TextInputType.number,

              ),
              Container(
                height: 70,
                child: Row(children: <Widget>[
                  Expanded(child: Text(_recentDate==null ? 'No Date Choosen' : DateFormat.yMMMd().format(_recentDate))),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text('Choose Date' , style: TextStyle(fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  )
                ],
                ),
              ),
              RaisedButton(child:
              Text('add transaction'),
                onPressed:  (){},
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.button.color,

              ),
            ],
          )),
    );
  }
}