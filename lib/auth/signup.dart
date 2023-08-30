import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/auth/login.dart';
import 'package:flutter_project/auth/otp_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logo(),
              const SizedBox(height: 40),
              const Text(
                "REGISTER",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 35),
              const Text(
                "Full Name",
                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              const Text(
                "Email",
                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              const Text(
                "Enter Password",
                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 30),
              loginButton(),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                  TextSpan(
                      text: "Sign In",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(context,
                            MaterialPageRoute(builder: (c) => const OTPAuth())),
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        width: 100,
        height: 100,
        child: Image.asset("images/logo.jpg"),
      ),
    );
  }

  Widget loginButton() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 3,
            shape: RoundedRectangleBorder(
                //to set border radius to button
                borderRadius: BorderRadius.circular(5)),
          ),
          child: const Text(
            "REGISTER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )),
    );
  }
}
