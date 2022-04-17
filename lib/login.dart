import 'package:flutter/material.dart';
import 'forgotpassword.dart';
import 'register.dart';
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'AstroAuro',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.yellow,
          ),
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Log in',
                            style: TextStyle(fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          onSaved: (value) => formData["email"] = value,
                          validator: (value) =>
                              value == "" ? "Email is required" : null,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Enter email",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          validator: (value) =>
                              value == "" ? "Password is required" : null,
                          onSaved: (value) => formData["password"] = value,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Password",
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));//forgot password screen
                        },
                        textColor: Colors.black,
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        height: 50,
                        //width: 70,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.yellow),
                              elevation: MaterialStateProperty.all(5),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)))),
                          onPressed: (){},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ));
                        },
                        child: const Text("No Account? Signup here", style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                )),
          )

    );
  }
}