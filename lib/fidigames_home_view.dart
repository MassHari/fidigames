import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_games_view.dart';

class FidigamesHomeView extends StatefulWidget {
  const FidigamesHomeView({Key? key}) : super(key: key);

  @override
  State<FidigamesHomeView> createState() => _FidigamesHomeViewState();
}

class _FidigamesHomeViewState extends State<FidigamesHomeView> {
  String? _dropDownValue;
  List items = ['Amoung Us', 'Mini Militia', 'Skribbl.io'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A121E),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Fidigames',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DropdownButton(
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          underline:
                              DropdownButtonHideUnderline(child: Container()),
                          hint: _dropDownValue == null
                              ? const Text(
                                  'Categories',
                                  style: TextStyle(color: Colors.white),
                                )
                              : Text(
                                  _dropDownValue!,
                                  style: const TextStyle(color: Colors.white),
                                ),
                          iconSize: 30.0,
                          items: items.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                              () {
                                _dropDownValue = val as String;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ReusableCard(
                      title: 'Amoung Us',
                      image: Image.asset(
                        "images/img1.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ReusableCard(
                      title: 'Mini Militia',
                      image: Image.asset(
                        "images/img2.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ReusableCard(
                      title: 'Skribbl.io',
                      image: Image.asset(
                        "images/img3.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    ReusableCard(
                      title: 'Skribbl.io',
                      image: Image.asset(
                        "images/img3.jpg",
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFCBC3C)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddGamesView()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '+ Add Games',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.title, required this.image})
      : super(key: key);

  final String? title;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color(0xff292333),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(height: 95, width: 90, child: image),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Color(0xffFCBC3C),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '240',
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Join your crewmates in a\nmultiplayer game of team work',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                            Text(
                              'Play',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Color(0xffFCBC3C))),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff1A121E)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )))),
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4 - 6 Players',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
