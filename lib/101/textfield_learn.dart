import "package:flutter/material.dart";

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNode1=FocusNode();
  FocusNode focusNode2=FocusNode();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            focusNode: focusNode1,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              
              prefix: Icon(Icons.mail),
              border: OutlineInputBorder(),
              labelText: "Mail",
              
            ),
          ),
          TextField(
            focusNode: focusNode2,
             decoration: const InputDecoration(
              
              prefix: Icon(Icons.mail),
              border: OutlineInputBorder(),
              labelText: "Password",
              
            ),
          )
        ],
      ),
    );
  }
}