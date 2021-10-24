import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel App (S1_01)',
      home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatefulWidget {
  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.menu),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              CircleAvatar(),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                        const Expanded(
                          flex: 3,
                          child: Text(
                            "Where wouid you \n like to go?",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: Card(
                              elevation: 4,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(Icons.search),
                                      hintText: "Search"),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: TabBar(
                      tabs: [
                        Tab(
                          text: "Polular",
                        ),
                        Tab(
                          text: "Recommennded",
                        ),
                        Tab(
                          text: "Cost-efficiency",
                        ),
                        Tab(
                          text: "Efficiency",
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                  Expanded(flex: 10, child: Placeholder())
                ],
              )),
        ],
      ),
    );
  }
}
