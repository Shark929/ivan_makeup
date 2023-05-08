import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 240, 211, 144),
          title: const Text(
            "Ivan Makeup",
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopify,
                ))
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // color: const Color.fromARGB(255, 240, 211, 144),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/cover.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: const Text(
                "Ivan Makeup is a collection of cosmetics products, inspired by the nature's unique ingredients and tones.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Products",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: products.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(products[index]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                products[index]['name'],
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 400,
                    width: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        'assets/model.jpg',
                      ),
                      fit: BoxFit.cover,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      width: 400,
                      child: Text(
                        "what started as a hobby and a way to pass time, evolved into a real passion.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "all collections",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: collections.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage(collections[index]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                collections[index]['name'],
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
              thickness: 2,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/instagram.png'),
                    fit: BoxFit.cover,
                  )),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/facebook.png'),
                    fit: BoxFit.cover,
                  )),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      )),
    );
  }
}
