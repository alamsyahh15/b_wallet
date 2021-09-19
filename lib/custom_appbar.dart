// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String? title;
  const CustomAppbar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Icon(Icons.arrow_back_ios, size: 16),
            ),
          ),
          Text(
            title ?? "",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 12, height: 0),
        ],
      ),
    );
  }
}
