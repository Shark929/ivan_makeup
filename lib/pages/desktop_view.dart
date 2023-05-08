import 'package:flutter/material.dart';
import 'package:single_page_website/constants/constants.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 211, 144),
        centerTitle: true,
        title: const Text('Ivan Makeup'),
        actions: [
          Container(
              padding: const EdgeInsets.all(
                8,
              ),
              child: const Text("Products")),
          Container(
              padding: const EdgeInsets.all(
                8,
              ),
              child: const Text("About us")),
          Container(
              padding: const EdgeInsets.all(
                8,
              ),
              child: const Text("Contact us")),
        ],
      ),
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
                horizontal: 100,
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
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                margin: const EdgeInsets.only(
                                  right: 90,
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
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Row(
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
                    width: 50,
                  ),
                  const SizedBox(
                      width: 300,
                      child: Text(
                        "what started as a hobby and a way to pass time, evolved into a real passion.",
                        style: TextStyle(
                          letterSpacing: 3,
                          fontSize: 24,
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
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
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
                  Row(
                    children: [
                      Container(
                        width: 500,
                        height: 300,
                        alignment: Alignment.bottomLeft,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/concealer.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white.withOpacity(0.5)),
                            child: const Text(
                              "concealer",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 550,
                            height: 140,
                            alignment: Alignment.bottomLeft,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/brush.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white.withOpacity(0.5)),
                                child: const Text(
                                  "brush",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 550,
                            height: 140,
                            alignment: Alignment.bottomLeft,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/foundation.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white.withOpacity(0.5)),
                                child: const Text(
                                  "foundation",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Divider(
              endIndent: 100,
              indent: 100,
              thickness: 2,
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "navigate",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("shop"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("account"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("about"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("contact"),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "help",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("shipping & delivery"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("exchange & return"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("terms & privacy"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("faq"),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "social",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("facebook"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("instagram"),
                    ],
                  )
                ],
              ),
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
