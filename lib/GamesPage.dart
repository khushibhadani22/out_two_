import 'package:flutter/material.dart';

import 'Global.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                leading: Hero(
                  tag: 'image',
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/124/124034.png',
                    width: 60,
                  ),
                ),
                title: const Text(
                  "WhatsApp\nMessenger",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: const Text(
                  "WhatsApp LLC",
                  style: TextStyle(color: Color(0xff009667), fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const Text(
                          " 4.1⭐",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "170M reviews",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 30,
                      width: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.download_for_offline_outlined,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "35 MB",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 30,
                      width: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.rate_review,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rated for 3+",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 30,
                      width: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Text(
                          " 5B+",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Downloads",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff009667)),
                child: const Center(
                  child: Text(
                    "Install",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: Global.wp
                          .map((e) => Row(
                                children: [
                                  Image.asset(
                                    "${e['image']}",
                                    width: 100,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ))
                          .toList()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "About this app",
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
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Simple. Reliable. Private.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                Colors.grey.shade50.withOpacity(0.2)),
                        onPressed: () {},
                        child: const Text(
                          "#4 top free in communication",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                Colors.grey.shade50.withOpacity(0.2)),
                        onPressed: () {},
                        child: const Text(
                          "Messaging & video",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ratings and reviews",
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
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Developer contact",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ListTile(
                leading: Icon(
                  Icons.build_circle_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "WebSite",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "android@support.whatsapp.com",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                title: Text(
                  "Address",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "1601 Willow Road Menlo Park,CA 94025",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.policy,
                  color: Colors.white,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    "Ads",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  - Related to this app",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Global.relatedApp
                      .map((e) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.black,
                                  child: Image.network("${e['image']}"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${e['name']}",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "${e['rt']}",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Global.rcApp
                      .map((e) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.black,
                                  child: Image.network("${e['image']}"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${e['name']}",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "${e['rt']}",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Column myImage(String image, String text, String ret) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(9),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black,
            child: Image.network(image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                ret,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
