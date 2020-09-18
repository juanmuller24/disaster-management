import 'package:disastermanagement/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Disaster_Management(),
    debugShowCheckedModeBanner: false,
  ));
}

class Disaster_Management extends StatefulWidget {
  @override
  _Disaster_ManagementState createState() => _Disaster_ManagementState();
}

class _Disaster_ManagementState extends State<Disaster_Management> {
  String name;
  String email;
  String pass;
  String phnum;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText:'Name',

                    border: OutlineInputBorder(),
                  ),
                  maxLength: 200,
                  validator: (val)=>val.isEmpty?'Enter Name':null,
                  onChanged: (val){
                    setState(() {
                      name=val;
                    });
                  },
                  onSaved: (val){
                    name=val;
                  },
                ),
                SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',

                    border: OutlineInputBorder(),
                  ),
                  validator: (val){
                    if(val.isEmpty){return 'Enter Phone number';}
                    return null;
                  },
                  onChanged: (val){
                    setState(() {
                      email=val;
                    });
                  },
                ),

                SizedBox(height: 35,),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Age',

                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (val){
                    if(val.isEmpty){return 'Enter Age';}
                    return null;
                  },
                  onChanged: (val){
                    setState(() {
                      phnum=val;
                    });
                  },
                ),

                SizedBox(height: 35,),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(

                    hintText: 'Profession',

                    border: OutlineInputBorder(),
                  ),
                  validator: (val){
                    if(val.isEmpty||val.length<10){return 'Enter a Profession';}
                    return null;
                  },
                  onChanged: (val){
                    setState(() {
                      pass=val;
                    });},),

                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(

                    hintText: 'Address',

                    border: OutlineInputBorder(),
                  ),
                  validator: (val){
                    if(val.isEmpty||val.length<10){return 'Enter a Address';}
                    return null;
                  },
                  onChanged: (val){
                    setState(() {
                      pass=val;
                    });},),
                RaisedButton.icon(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                    icon: Icon(Icons.add),
                    label: Text('SUBMIT'))
              ],
            ),
          ),
        ),
      ),


    
    );
  }
}
