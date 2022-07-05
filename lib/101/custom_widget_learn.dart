import "package:flutter/material.dart";


class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);
  final String title="CustomWidget";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(padding:const EdgeInsets.all(8.0),child:CustomButton(title: title, onPressed: () {},)),
        ),
        CustomButton(title: title,onPressed: (){},)
        ],
      ),
    );
    }
}
class _ColorUtility {
  static Color porchase = const Color(0xffEDBF61);
  static Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}

//if we want to do not use the static var so we can inherit our class
// class _ColorUtility {
//   static Color porchase = const Color(0xffEDBF61);
//   static Color sulu = const Color.fromRGBO(198, 237, 97, 1);
// }
// class CustomWidget extends StatelessWidget with _ColorUtility {
//   CustomWidget({Key? key}) : super(key: key);
//
class _PaddingUtil{
 static const EdgeInsets normalPadding=EdgeInsets.all(10);
}


class CustomButton extends StatelessWidget with _ColorUtility, _PaddingUtil {
 CustomButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
        
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          onPrimary: _ColorUtility.sulu,
          shape: StadiumBorder(
            side: BorderSide(
              color: _ColorUtility.sulu,
              width: 2,
            ),
          ),
          
        ),
        child: Padding(
          padding: _PaddingUtil.normalPadding,
          child: Text(title,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: _ColorUtility.porchase,
            fontWeight: FontWeight.bold,
          ),
              ),
        )
    );
  }
}