import 'package:flutter/material.dart';

class TEST extends StatelessWidget {
  const TEST({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEST'),
      ),
      drawer: const Drawer(),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) =>
                  Container(height: 200, child: const Text('data')));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            label: 'orscpc', icon: Icon(Icons.chevron_left)),
        BottomNavigationBarItem(
            label: 'orscpc', icon: Icon(Icons.chevron_right)),
      ]),
    );
  }
}
