import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({Key? key}) : super(key: key);

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin {
    late AnimationController controller;
    bool isNight=true;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration: const Duration(seconds: 5  ));
  }    



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(),
      body: Column(
        children: [
          InkWell(onTap: ()
          
          {
            isNight? controller.animateBack(0):controller.animateTo(0.5);
            

            
            isNight=!isNight;},child: Lottie.network(controller:controller,"https://assets2.lottiefiles.com/packages/lf20_r6blppzq.json")),
          InkWell(child: Lottie.network(
            repeat: false,
            "https://assets3.lottiefiles.com/packages/lf20_tbyegho2.json",
            controller: controller,
            
            ),
            onTap: (){
         
              controller.animateTo(isNight?0.5:1);
              isNight=!isNight;
            },),
        ],
      )
    );
  }
}