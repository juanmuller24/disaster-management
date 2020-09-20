import 'package:flutter/material.dart';

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    double dh = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text("Request"),
      ),
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Post Your Request here"),
                Text("Enter the data of the person who need help"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: dh * 0.6,
                      width: 300,
                      child: SingleChildScrollView(
                        child: Center(
                            child: Column(
                              children: [
                                Text("What is the Need"),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0)),
                                      labelText: 'ex: Food, blanket, books,',
                                    ),
                                  ),
                                ),
                                Text("Name"),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0)),
                                      labelText: 'Enter full Name',
                                    ),
                                  ),
                                ),
                                Text("Contact Number"),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0)),
                                      labelText: 'ex: +919876543210',
                                    ),
                                  ),
                                ),
                                Text("Age"),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0)),
                                      labelText: 'ex: 50+,',
                                    ),
                                  ),
                                ),
                                Text("Location"),
                                Container(
                                  width: 250,
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0)),
                                      labelText: 'format: area,dist,state,pin',
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}