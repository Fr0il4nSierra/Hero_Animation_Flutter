import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
       ),
       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'img' ,
              child: Image.network(
                "https://images.unsplash.com/photo-1540886955408-0307191f4139?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
            ),
            Text(
              "A beautiful tower clock",
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height:20.0,),
            Text(lipsum.createParagraph(numParagraphs: 5)),
          ],
       ),
      ),
    );
  } 
}