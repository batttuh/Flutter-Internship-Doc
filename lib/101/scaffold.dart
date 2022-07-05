import 'package:flutter/material.dart';

class TestingView extends StatelessWidget {
  const TestingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Hello")),
        drawer: Drawer(
            child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: const [
              Text(
                "what is that",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        )),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200,
                      color: Colors.black,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "a"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "a")
        ]));
  }
}
