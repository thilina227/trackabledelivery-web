import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LandingPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                TrackingForm(),
            ], 
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
            ],
          )
        ],
        
      ),
    );
  }
}

final _formKey = GlobalKey<FormState>();

class TrackingForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 200,
            child: TextFormField(
              decoration: const InputDecoration(
                helperText: "Enter the tracking id",
                
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter the tracking id';
                }
                return null;
              },
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              // Validate returns true if the form is valid, or false
              // otherwise.
              if (_formKey.currentState.validate()) {
                
              }
            },
            child: Text('Track', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}