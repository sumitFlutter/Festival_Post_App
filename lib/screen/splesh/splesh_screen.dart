import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() => Navigator.pushReplacementNamed(context, "home"),);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg_images/1.jpg",height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/logo_image/1.png",height: 110,width: 110,fit: BoxFit.contain,)),
            const Center(child: Text("Festival Post Maker",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontFamily: "s2",fontSize: 18),),)
            ],
          )
        ],
      ),
    ));
  }
}
