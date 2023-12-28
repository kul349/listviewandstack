import 'package:flutter/material.dart';

class MyCreate extends StatefulWidget {
  const MyCreate({super.key});

  @override
  State<MyCreate> createState() => _MyCreateState();
}

class _MyCreateState extends State<MyCreate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFE0F2F1)),
      height: 240,
      margin: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Container(
            height: 350,
            padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5.0,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Mebina Nepal",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5.0),
                  const Text("UI/UX design| Foodie|Kathmandu"),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ListTile(
                            title: const Text("302",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              "Post".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text("10.3k",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              "Followers".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text("120",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              "Following".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ActionChip(
                    label: const Text("Follow +"),
                    onPressed: () {},
                    labelStyle: const TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 5.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFr9fnfSDc3NhvE_yG2fXmFLz0Td0eed-Ktb2zcZf3Ng&s"),
                ),
              )
            ],
          ),
          Positioned(
            top: 400,
            left: 30,
            right: 30,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              child: Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(20), // Same as Card's borderRadius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Your content here
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          Text(
                            "Kul karki",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("React| HTML|JS"),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: ListTile(
                                    title: const Text(
                                      '336',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text("Post".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 12)),
                                  )),
                                  Expanded(
                                      child: ListTile(
                                    title: const Text(
                                      '336',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text("Followers".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 12)),
                                  )),
                                  Expanded(
                                      child: ListTile(
                                    title: const Text(
                                      '336',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text("Following".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 12)),
                                  ))
                                ],
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                        right: MediaQuery.of(context).size.width / 2 - 50,
                        child: const Material(
                          elevation: 5.0,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFr9fnfSDc3NhvE_yG2fXmFLz0Td0eed-Ktb2zcZf3Ng&s"),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
