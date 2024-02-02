

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/image_model.dart';
import '../../utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isList =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg_images/1.jpg",height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blue))),
                        child: const Text(
                          "Festivals",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.blue),
                        )),
                    InkWell(
                      onTap: () {
                        setState(() {
                          randomNumber();
                          mainColor.shuffle();
                          isList=!isList;
                        });
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: isList?const Icon(
                            Icons.grid_3x3,
                            color: Colors.black,
                          ):
                          const Icon(Icons.list)
                      ),
                    )
                  ],
                ),

              Expanded(
                child: isList?ListView.builder(
                    itemCount: festivals.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'festival',arguments: model[index]);
                      },
                      child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: mainColor[index].shade300,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Container(height: 70,width: 70,decoration: BoxDecoration( borderRadius: BorderRadius.circular(15)),child: Image.asset("${festivals[index]["image"]}",fit: BoxFit.cover,),),
                                    Text(
                                      festivals[index]["name"],
                                      style:  TextStyle(
                                          fontSize: 25, fontWeight: FontWeight.bold,fontFamily:"s1" ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                    )):
                GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: festivals.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "festival",arguments: model[index]);
                      },
                      child: Container(
                        height: 170,
                          width: 170,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: mainColor[index].shade300,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset(festivals[index]["image"],height: 150,width: 150,fit: BoxFit.cover,)),
                    );
                  },
                )
              ),

            ]),
          ),
        ],
      ),
    );
  }
}
