import 'package:flutter/material.dart';
import 'package:login_flrebasee/register/register.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: _isObscured,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text("Login")),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => register()),
                          );
                        },
                        child: Text("Sign Up"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
