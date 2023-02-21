import 'package:flutter/material.dart';

import 'AppsPage.dart';
import 'BooksPage.dart';
import 'CatagorisPage.dart';
import 'ChildrenPage.dart';
import 'EvaentsPage.dart';
import 'ForYouPage.dart';
import 'GamesPage.dart';
import 'PrimumPage.dart';
import 'TopChatsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    PageController pageController = PageController();

    int num = 0;
    List<Widget> page = [
      const ForYou(),
      const TopChats(),
      const Children(),
      const EventsPage(),
      const Premium(),
      const Categories(),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Scaffold(
              appBar: AppBar(
                title: Container(
                  height: 40,
                  width: 400,
                  color: Colors.white.withOpacity(0.3),
                  child: const TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.black,
                          ))),
                ),
                elevation: 10,
                bottom: TabBar(
                  isScrollable: true,
                  onTap: (val) {
                    setState(() {
                      num = val;
                      pageController.animateToPage(val,
                          duration: const Duration(microseconds: 250),
                          curve: Curves.easeIn);
                    });
                  },
                  controller: tabController,
                  indicatorColor: Colors.teal,
                  tabs: const <Tab>[
                    Tab(
                      child: Text(
                        "For you",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Top charts",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Children",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Events",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Premium",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.brown.shade300.withOpacity(0.2),
              ),
              bottomNavigationBar: Container(
                height: 80,
                width: double.infinity,
                color: Colors.brown.shade300.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            //   Navigator.of(context).pushNamed('game');
                          },
                          icon: const Icon(
                            Icons.games_outlined,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //  Navigator.of(context).pushNamed('game');
                          },
                          child: const Text(
                            "Games",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            //  Navigator.of(context).pushNamed('app');
                          },
                          icon: const Icon(
                            Icons.apps,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //  Navigator.of(context).pushNamed('app');
                          },
                          child: const Text(
                            "Apps",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            //  Navigator.of(context).pushNamed('book');
                          },
                          icon: const Icon(
                            Icons.book_online,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigator.of(context).pushNamed('book');
                          },
                          child: const Text(
                            "Books",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              body: PageView(
                onPageChanged: (val) {
                  setState(() {
                    tabController.animateTo(val);
                    num = val;
                  });
                },
                controller: pageController,
                children: page.map((e) => e).toList(),
              ),
              backgroundColor: Colors.black,
            ),
        'game': (context) => const Games(),
        'app': (context) => const Apps(),
        'book': (context) => const Book(),
      },
    );
  }
}
