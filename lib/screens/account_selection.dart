import 'package:flutter/material.dart';
import 'package:ii1/screens/login_page.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Choose your account type ?",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, minimumSize: Size(300, 60)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
              },
              icon: Icon(
                Icons.supervised_user_circle_outlined,
                color: Colors.orange,
              ),
              label: Text(
                "Parent/Guardian",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, minimumSize: Size(300, 60)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
              },
              icon: Icon(
                Icons.supervised_user_circle_outlined,
                color: Colors.orange,
              ),
              label: Text(
                "My Self",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}
