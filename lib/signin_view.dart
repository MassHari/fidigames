import 'package:fidigames/fidigames_home_view.dart';
import 'package:flutter/material.dart';

final emailDecoration = InputDecoration(
    filled: true,
    fillColor: const Color(0xff292333),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    hintStyle: const TextStyle(fontSize: 14.0, color: Colors.white));

class SignInView extends StatelessWidget {
  const SignInView({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A121E),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 93,
            ),
            const Text(
              'Fidigames',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 123,
            ),
            const Text(
              'Log In',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                  decoration: emailDecoration.copyWith(
                hintText: 'Email',
              )),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                  decoration: emailDecoration.copyWith(
                hintText: 'Password',
              )),
            ),
            const SizedBox(
              height: 53,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const FidigamesHomeView()));
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffFCBC3C)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))))
          ],
        ),
      ),
    );
  }
}
