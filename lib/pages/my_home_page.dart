import 'package:flutter/material.dart';
import 'package:interface_b/pages/acceuil.dart';
import 'package:interface_b/pages/profil_page.dart';
import 'package:interface_b/pages/stat_page.dart';

import 'Conversation_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;
  final Tabs = [Acceuil(), StatPage(), ConversationPage()];
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(child: Tabs[currentTab], bucket: bucket),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.home_outlined,
                          color: currentTab == 0 ? Colors.white : Colors.grey),
                      Text(currentTab == 0 ? "." : "",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.white : Colors.grey))
                    ],
                  )),
              MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.analytics_sharp,
                          color: currentTab == 1 ? Colors.white : Colors.grey),
                      Text(currentTab == 1 ? "." : "",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.white : Colors.grey))
                    ],
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.message_outlined,
                          color: currentTab == 2 ? Colors.white : Colors.grey),
                      Text(currentTab == 2 ? "." : "",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.white : Colors.grey))
                    ],
                  )),
              MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      // currentTab = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.account_circle_outlined, color: Colors.grey),
                      Text("")
                    ],
                  ))
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
