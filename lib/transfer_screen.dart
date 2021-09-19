// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:b_wallet/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CustomAppbar(
                  title: "Transfer",
                ),
                Image.asset(
                  "assets/ic_profile_new.png",
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text(
                  "Alamsyah",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "BVI - 08899012345",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "transfer of",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "\$50.99",
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.all(24),
                  padding: EdgeInsets.all(25),
                  child: Text(
                      "👋 Hello Alamsyah, I paid the remaining payment for yesterday's purchase, thank you very much... 👋"),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6FF),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 8,
                    top: MediaQuery.of(context).size.width / 3,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  child: ElevatedButton(
                    child: Text("Send Money"),
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      )),
                      shadowColor: MaterialStateProperty.all(
                        Colors.blue.withOpacity(0.6),
                      ),
                      elevation: MaterialStateProperty.all(24),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
