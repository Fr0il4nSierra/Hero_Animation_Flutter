import 'package:flutter/material.dart';
import 'package:flutter_app/details.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  }

class _HomePageState extends State<HomePage> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),     
        child: Container(
          child: SizedBox(
            height: 500.0,
            child: Card(
              elevation: 2.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage (),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                     borderRadius: BorderRadius.circular(8.0),
                     child: Hero(
                       tag: 'img',
                                            child: Image.network(
                           "https://images.unsplash.com/photo-1540886955408-0307191f4139?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                     ),
                    ),
                    SizedBox(
                      height: 20.0,
                   ),
                  Text(
                    "A beautiful tower clock",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  Text(lipsum.createWord(numWords: 50))
                  ],
                  ),
                ),
              ),
            ),
          ),
        ),
     ),
    );
  }
}