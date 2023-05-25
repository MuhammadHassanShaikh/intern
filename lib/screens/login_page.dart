import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Login now",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      SizedBox(
        height: 10,
      ),
      Text("Please enter the detail below to continue"),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.lightGreen.shade200,
              ),
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.lightGreen.shade200,
              ),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}

Widget buildforgotpassbtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: Text(
      "Forgot Password",
      style: TextStyle(color: Colors.orange),
    ),
  );
}

Widget buildloginbtn() {
  return Column(
    children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, minimumSize: Size(1200, 60)),
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ))
    ],
  );
}

Widget buildtext() {
  return Container(
    child: RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "Don't have an account, ",
        style: TextStyle(color: Colors.black),
      ),
      TextSpan(text: "Sign Up!", style: TextStyle(fontWeight: FontWeight.bold))
    ])),
  );
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.lightGreen.shade200,
                        Colors.lightGreen.shade200,
                        Colors.lightGreen.shade200,
                        Colors.lightGreen.shade200,
                      ])),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 40, //120
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/images/iii1.PNG"),
                        SizedBox(
                          height: 50,
                        ),
                        buildEmail(),
                        SizedBox(
                          height: 20,
                        ),
                        buildPassword(),
                        SizedBox(
                          height: 15,
                        ),
                        buildforgotpassbtn(),
                        SizedBox(
                          height: 40,
                        ),
                        buildloginbtn(),
                        SizedBox(
                          height: 50,
                        ),
                        buildtext(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          value: SystemUiOverlayStyle.light),
    );
  }
}
