import 'package:festival_app/utils/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(25.0),
          child: const Icon(
              Icons.search,
              size: 28,
              color: Colors.black,
            ),
          ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Icon(
              Icons.list,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Explore",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              )),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.blue))),
                child: Text(
                  "Festivals",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blue),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: festivals.length,
                itemBuilder: (context, index) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "${festivals[index]["image"]}",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              festivals[index]["name"],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
          ),
        ]),
      ),
    );
  }
}