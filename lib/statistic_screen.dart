import 'package:b_wallet/bar_widget.dart';
import 'package:b_wallet/custom_appbar.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const CustomAppbar(title: "Statistic"),
                const CustomHeader(),
                const CardBar(),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 42),
                    padding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 32),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "\$20.00 / month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "your current transaction ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                            width: 114,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ))),
                              onPressed: () {},
                              child: const Text("Setup"),
                            ),
                          )
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardBar extends StatelessWidget {
  const CardBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_circle_down_rounded,
                        size: 24,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "\$32,232",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Income",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_circle_up_rounded,
                        size: 24,
                        color: Colors.blue.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "\$32,232",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Income",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const StatisticBar(),
          ],
        ),
      ),
    );
  }
}

class StatisticBar extends StatelessWidget {
  const StatisticBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          {
            "day": "Sun",
            "value": 0.5,
          },
          {
            "day": "Mon",
            "value": 0.6,
          },
          {
            "day": "Tue",
            "value": 0.7,
          },
          {
            "day": "Wed",
            "value": 1.0,
          },
          {
            "day": "Thu",
            "value": 0.3,
          },
          {
            "day": "Fri",
            "value": 0.2,
          },
          {
            "day": "Sat",
            "value": 0.25,
          },
        ].map((e) {
          return Column(
            children: [
              BarWidget(valueBar: (e['value'] as double)),
              const SizedBox(height: 8),
              Text(
                "${e['day']}",
                style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 1,
                  color: e['day'] == "Wed" ? Colors.blue : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$532,232",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    children: const [
                      Text("Weekly"),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
