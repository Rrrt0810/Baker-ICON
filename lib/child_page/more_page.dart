import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEAE6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Add some spacing
              const Text(
                'dejavu',
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image(
                  image: AssetImage('assets/common/user.png'),
                  width: 100,
                  height: 100,
                ),
              ]),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Find perfect icon for APPs',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF497749),
                  ),
                ),
              ]),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(5), // Adding rounded corners
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('assets/common/white-bread.png'),
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover, // Ensure the image covers the area
                        ),
                        SizedBox(width: 10),
                        // Add some spacing between image and text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Baker',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF497749),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Add some spacing between text and next paragraph
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Baker lCON is a free app that has a large collection oficons and stickers designed by our team.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 10),
                    // Add some spacing between text and next paragraph
                    Text(
                      "We also handpicked icons and stickers every day fromflaticon、twitter、google、dribbble and more.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(5), // Adding rounded corners
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/common/heart.png'),
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover, // Ensure the image covers the area
                        ),
                        SizedBox(width: 10),
                        // Add some spacing between image and text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Favorites',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF497749),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(5), // Adding rounded corners
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/common/faq.png'),
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover, // Ensure the image covers the area
                        ),
                        SizedBox(width: 10),
                        // Add some spacing between image and text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FAQ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF497749),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xFFF0F0F0),
                      thickness: 1.0,
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/common/padlock.png'),
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Privacy',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF497749),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xFFF0F0F0),
                      thickness: 1.0,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/common/diamond.png'),
                              width: 25,
                              height: 25,
                              fit: BoxFit
                                  .cover, // Ensure the image covers the area
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Version',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF497749),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '1.0.0',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF497749),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
