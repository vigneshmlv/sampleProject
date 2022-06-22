import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int phoneNumberLength = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // get location

    // location based phonenumber length changes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        actions: [
          TextButton(
              onPressed: () {
                // function for on pressed
                print("Next Button Tapped");
              },
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Login Page",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    decoration: TextDecoration.none),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  String pattern =
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?)*$";
                  RegExp regex = RegExp(pattern);
                  if (value == null || value.isEmpty || !regex.hasMatch(value))
                    return 'Enter a valid email address';
                  else
                    return null;
                },
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Password"),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                maxLength: phoneNumberLength,
                decoration: InputDecoration(hintText: "Phone Number"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: ElevatedButton(
                    onPressed: () {
                      print("Elevated button tapped");
                    },
                    child: const Text("Login")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
