// ignore_for_file: prefer_const_constructors

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
    _tabController = TabController(vsync: this, length: 3);
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
                            "Where would you \n like to go?",
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
                      labelColor: Colors.black,
                      labelStyle: const TextStyle(
                        fontSize: 18,
                      ),
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorColor: Colors.deepOrangeAccent,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      tabs: const [
                        Tab(
                          text: "Polular",
                        ),
                        Tab(
                          text: "Recommennded",
                        ),
                        Tab(
                          text: "Cost-efficiency",
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 8, bottom: 8),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 260,
                                  margin: const EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(24),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/12/08/00/30/golden-gate-bridge-1081782_960_720.jpg"),
                                      fit: BoxFit.cover,
                                      /*colorFilter: ColorFilter.mode(
                                            Colors.black, BlendMode.darken)*/
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Spacer(),
                                          CircleAvatar(
                                            backgroundColor: Colors.orange,
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        "Golden Gate\nBridge",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28),
                                      ),
                                      Row(
                                        children: [
                                          ...List<Widget>.generate(
                                              5,
                                              (index) => Icon(
                                                    Icons.star,
                                                    color: Colors.orange,
                                                    size: 18,
                                                  )).toList(),
                                          Text(
                                            "(32)",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7),
                                        child: Container(
                                          height: 38,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Stack(
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        radius: 16,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 16,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        radius: 16,
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 32,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        radius: 16,
                                                        backgroundColor:
                                                            Colors.green,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  "US \$149.89",
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                color: Colors.red,
                                width: 200,
                              );
                            }),
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                color: Colors.red,
                                width: 200,
                              );
                            }),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
