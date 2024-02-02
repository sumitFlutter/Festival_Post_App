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
          Image.asset("assets/bg_images/splesh.jpg",height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,fit: BoxFit.fill,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/logo_image/1.png",height: 100,width: 100,fit: BoxFit.contain,)),
            const Center(child: Text("Festival Post Maker",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
            ],
          )
        ],
      ),
    ));
  }
}
