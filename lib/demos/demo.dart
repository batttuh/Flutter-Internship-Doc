import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);
  final String text="texttexttext   texttexttexttexttexttextte    xttexttexttexttex   ttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 197, 197),
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.light),
      body: PaddingMain(
        child: Column(
          children: [
            Column(
                children: [
                  Image.network(
                'https://www.baidu.com/img/bd_logo1.png',
                fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: const Center(
                    child:Text("Hello From Here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,wordSpacing: 2,),),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Center(child: Padding(padding:EdgeInsets.symmetric(horizontal: 20),child: Text(text,textAlign: TextAlign.center,style: TextStyle(fontSize: 15,wordSpacing: 2))),)),
                ],
              ),
            
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: ()=>{

              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
              ),
        
              child: const Center(child: Text("点击")),
              ),
            ),
            TextButton(onPressed: ()=>{
              
            }, child: Text("Click here"))
            
          ]
        ),
      ),  
    
    );
  }
}
class PaddingMain extends StatelessWidget {
  const PaddingMain({Key? key,required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(20),
    child:child);
  }
}