import 'package:fidigames/fidigames_home_view.dart';
import 'package:flutter/material.dart';

class AddGamesView extends StatefulWidget {
  const AddGamesView({Key? key}) : super(key: key);

  @override
  State<AddGamesView> createState() => _AddGamesViewState();
}

class _AddGamesViewState extends State<AddGamesView> {
  String? dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A121E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const FidigamesHomeView()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Add a Games',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 29,
                ),
                const Text(
                  'Name of the Game',
                  style: TextStyle(color: Color(0xffFEFEFE)),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 30),
                      filled: true,
                      fillColor: const Color(0xff292333),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 14.0, color: Colors.white)),
                ),
                const SizedBox(
                  height: 27,
                ),
                const Text(
                  'Decoration',
                  style: TextStyle(color: Color(0xffFEFEFE)),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 50),
                      filled: true,
                      fillColor: const Color(0xff292333),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 14.0, color: Colors.white)),
                ),
                const SizedBox(
                  height: 33,
                ),
                const Text(
                  'Game URL',
                  style: TextStyle(color: Color(0xffFEFEFE)),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 30),
                      filled: true,
                      fillColor: const Color(0xff292333),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 14.0, color: Colors.white)),
                ),
                const SizedBox(
                  height: 46,
                ),
                const Text(
                  'Players Count',
                  style: TextStyle(color: Color(0xffFEFEFE)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Minimum count',
                          style:
                              TextStyle(color: Color(0xffFEFEFE), fontSize: 14),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xff292333),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Center(
                            child: Text(
                              '2',
                              style: TextStyle(color: Color(0xffFEFEFE)),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Miximum count',
                          style:
                              TextStyle(color: Color(0xffFEFEFE), fontSize: 14),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xff292333),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Center(
                            child: Text(
                              '8',
                              style: TextStyle(color: Color(0xffFEFEFE)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                const Text(
                  'Category',
                  style: TextStyle(color: Color(0xffFEFEFE), fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff292333),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                      isExpanded: true,
                      underline:
                          DropdownButtonHideUnderline(child: Container()),
                      hint: dropDownValue == null
                          ? const Text(
                              'Choose the Category of game',
                              style: TextStyle(color: Colors.white),
                            )
                          : Text(
                              dropDownValue!,
                            ),
                      iconSize: 30.0,
                      items: [].map(
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
                            dropDownValue = val as String;
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 41,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff292333),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.backup_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Upload an image',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 51,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFCBC3C)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      onPressed: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 45,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
