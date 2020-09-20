import 'package:disastermanagement/request.dart';
import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    double dh = MediaQuery.of(context).size.height;
    double dw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Alerts"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => Maps(),
                  //     ));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Material(
                      elevation: 10,
                      child: Container(
                        height: dh * 0.15,
                        width: dw * 0.8,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Your location is to be flooded soon"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("Move to Safe area")),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Requests()));
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            gradient: LinearGradient(colors: [
                                              Color(0xFF82d9e3),
                                              Color(0xFFa5e7cc)
                                            ])),
                                        child:
                                        Center(child: Text("Need Help")))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Red alert move to safe zoom"),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "I'm Here",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Location: chennai"),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Second Flood Alert"),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "I'm Here",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Location: south-chennai"),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: dh * 0.1,
                      width: dw * 0.8,
                      child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("First Flood Alert"),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "I'm Here",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Location: south-chennai"),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}