import  "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';


class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends ChangeBoolean<SharedLearn> {
   int currentVal=0;
   
   elevatedOnTap() async {
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    textOnTap(counter.toString());
   }
   textOnTap(String data){
    try{

    final int _data=int.parse(data);
    if(_data!=null){
      setState(() {
        currentVal=_data;
      });
    }
    }catch(e){
      print(e);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    elevatedOnTap();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentVal.toString()),
        actions: [
          isDataTransfered ? Center(child: CircularProgressIndicator()) : SizedBox.shrink()
        ],
      ),
      floatingActionButton:Row(mainAxisAlignment: MainAxisAlignment.end,children: [
        saveButton(),
        deleteButton(),
        ]),
      body:TextField(
        onChanged: (String value) {
         textOnTap(value);
        },
      )
    );
  }

  FloatingActionButton saveButton() {
    return FloatingActionButton(onPressed: () async {
       changed();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', currentVal);
         changed();
    }, child: Icon(Icons.save));
  }
  FloatingActionButton deleteButton() {
    return FloatingActionButton(onPressed: () async {
       changed();
        final prefs = await SharedPreferences.getInstance();
        final success = await prefs.remove('counter');
         changed();
    }, child: Icon(Icons.delete));
  }
}
abstract class ChangeBoolean<T extends StatefulWidget> extends State<T>{
   bool isDataTransfered=false;
  changed(){
      isDataTransfered=!isDataTransfered;
    
   }

}