import 'package:flutter/material.dart';

import 'Global.dart';

class TopChats extends StatefulWidget {
  const TopChats({Key? key}) : super(key: key);

  @override
  State<TopChats> createState() => _TopChatsState();
}

class _TopChatsState extends State<TopChats> {
  bool SwitchVal = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Show installed apps",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Switch(
                    activeColor: Colors.white,
                    value: SwitchVal,
                    onChanged: (val) {
                      setState(() {
                        SwitchVal = val;
                      });
                    }),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          "Top Free",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          "Top Grossing",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          "Trending",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          "Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Column(
              children: Global.tpChats
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "${e['text']}",
                                  style: const TextStyle(color: Colors.white),
                                )),
                            Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.network("${e['image']}"),
                                )),
                            Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "  ${e['name']}",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "  ${e['name2']}",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  ${e['rt']}",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
