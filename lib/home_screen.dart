import 'package:b_wallet/statistic_screen.dart';
import 'package:b_wallet/transfer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CustomHeader(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const StatisticScreen(),
                            ),
                          );
                        },
                        child: const CardNumber(),
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const TransferScreen(),
                          ));
                        },
                        child: const Content(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 3,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          width: widthScreen,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 206, 206, 1.0)
                        .withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 5,
                  width: 32,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Last Transcation",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  {
                    "title": "Gamming",
                    "date": "May 28, 2:20 PM",
                    "cost": "-\$213",
                    "color": Colors.red,
                    "icon": Icon(Icons.gamepad_outlined, color: Colors.white),
                  },
                  {
                    "title": "Shopping",
                    "date": "May 28, 2:20 PM",
                    "color": Colors.green,
                    "cost": "+\$213",
                    "icon":
                        Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  },
                  {
                    "title": "Movie",
                    "date": "May 28, 2:20 PM",
                    "color": Colors.red,
                    "cost": "-\$213",
                    "icon": Icon(Icons.movie_creation_outlined,
                        color: Colors.white),
                  },
                  {
                    "title": "Gamming",
                    "date": "May 28, 2:20 PM",
                    "cost": "-\$213",
                    "color": Colors.red,
                    "icon": Icon(Icons.gamepad_outlined, color: Colors.white),
                  },
                  {
                    "title": "Shopping",
                    "date": "May 28, 2:20 PM",
                    "color": Colors.green,
                    "cost": "+\$213",
                    "icon":
                        Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  },
                  {
                    "title": "Movie",
                    "date": "May 28, 2:20 PM",
                    "color": Colors.red,
                    "cost": "-\$213",
                    "icon": Icon(Icons.movie_creation_outlined,
                        color: Colors.white),
                  },
                ].map((e) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFBDEFFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: (e['icon'] as Widget),
                      ),
                      title: Text(
                        "${e['title']}",
                        style: const TextStyle(fontSize: 14),
                      ),
                      subtitle: Text(
                        "${e['date']}",
                        style: const TextStyle(fontSize: 10),
                      ),
                      trailing: Text(
                        "${e['cost']}",
                        style: TextStyle(
                          fontSize: 14,
                          color: (e['color'] as Color),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardNumber extends StatelessWidget {
  const CardNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/ic_card.png'),
        Positioned(
          top: 32,
          right: 32,
          child: SizedBox(
            width: 32,
            child: Stack(
              children: const [
                Positioned(
                  left: 12,
                  child: CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 10,
                  ),
                ),
                SizedBox(width: 16),
                CircleAvatar(
                  backgroundColor: Colors.white54,
                  radius: 10,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 32,
          left: 32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Current Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "\$ 10,000.00",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 32,
          left: 32,
          child: Text(
            "1010 1996 1018 1999",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          bottom: 32,
          right: 32,
          child: Text(
            "10/28",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Morning!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Text(
                "Fanen Studio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/ic_profile_new.png",
            width: 40,
            height: 40,
          )
        ],
      ),
    );
  }
}
