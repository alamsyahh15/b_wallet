import 'package:b_wallet/custom_appbar.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CustomAppbar(title: "Transfer"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/ic_profile_new.png",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Alamsyah",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const Text(
                      "BVI - 08899012345",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "transfer of",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const Text(
                      "\$50.99",
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      margin: const EdgeInsets.all(24),
                      padding: const EdgeInsets.all(25),
                      child: const Text(
                          "👋 Hello Alamsyah, I paid the remaining payment for yesterday's purchase, thank you very much... 👋"),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F6FF),
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
                        child: const Text("Send Money"),
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                          shadowColor: MaterialStateProperty.all(
                            Colors.blue.withOpacity(0.6),
                          ),
                          elevation: MaterialStateProperty.all(24),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
