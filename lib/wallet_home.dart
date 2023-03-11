import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WalletHome extends StatelessWidget {
  const WalletHome({super.key});

  // create static list of card
  static List<Map<String, dynamic>> walletCards = [
    {
      'primary': Color.fromRGBO(94, 94, 94, 1),
      'secondary': Color.fromRGBO(161, 173, 169, 1),
      'name': 'Nova Platinum',
    },
    {
      'primary': Color.fromRGBO(217, 172, 126, 1),
      'secondary': Color.fromRGBO(152, 86, 86, 1),
      'name': 'Nova Gold',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 50, 50, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: size.height * 0.7,
                width: size.width * 0.5,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(65, 65, 65, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    )),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: const [
                      Icon(Icons.menu, size: 30),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.55,
                  width: size.width,
                  // color: Colors.white,
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.separated(
                    itemCount: walletCards.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final wallet = walletCards[index];
                      return Container(
                        height: size.height * 0.5,
                        width: size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: wallet['primary'],
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 40, 10),
                                      alignment: Alignment.topCenter,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/chip_image.png',
                                              height: size.height * 0.10,
                                              width: size.width * 0.25,
                                            ),
                                            Text(
                                              wallet['name'],
                                              style: const TextStyle(
                                                fontSize: 22,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: wallet['secondary'],
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.all(30),
                                      child: const Text(
                                        '1234 1234',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                bottom: size.width * 0.17,
                                right: size.height * 0.05,
                                child: const Icon(
                                  Icons.join_full,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '\$11,350',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(65, 65, 65, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),
                        padding: const EdgeInsets.only(top: 25, bottom: 10),
                        child: Column(children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.8,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(50, 50, 50, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                  )),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              alignment: Alignment.centerRight,
                              child: const Text(
                                'November 28',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Uber Black',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      '-\$16.05',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange.shade200,
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 1.5,
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Lufthansa Airlines',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      '-\$150',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.orange.shade200,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
