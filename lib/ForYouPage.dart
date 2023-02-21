import 'package:flutter/material.dart';

import 'Global.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended for you",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                    children: Global.recommended
                        .map((e) => Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.black,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed('game');
                                        },
                                        child: Hero(
                                            tag: 'image',
                                            child: Image.network(
                                                "${e['myImage']}"))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${e['title']}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "${e['rt']}",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ))
                        .toList())),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Music & audio",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: Global.music
                    .map((e) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9),
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.black,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed('game');
                                    },
                                    child: Hero(
                                        tag: 'image',
                                        child:
                                            Image.network("${e['myImage']}"))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "${e['title']}",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "${e['rt']}",
                                    style: const TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "  Suggested for you",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: Global.suggested
                    .map((e) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9),
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.black,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed('game');
                                    },
                                    child: Hero(
                                        tag: 'image',
                                        child:
                                            Image.network("${e['myImage']}"))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "${e['title']}",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "${e['rt']}",
                                    style: const TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
