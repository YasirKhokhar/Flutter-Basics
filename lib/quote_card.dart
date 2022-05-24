import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote,required this.delete});



  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(height: 1.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
            child: Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 8.0,),
          FlatButton.icon(
            onPressed: (){
              delete;
            },
              icon: Icon(
                Icons.delete
              ),
              label: Text(
                'Delete Quote'
              ),
          ),
        ],
      ),
    );
  }
}
