import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1654118723055-a5c5cbf681e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            Text(
              'Explore and\ndiscover new places',
              style: GoogleFonts.lato(
                  letterSpacing: -3,
                  fontWeight: FontWeight.w800,
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 45),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Browse a lot of interesting tourist offers and choose something for yourself. The world is waiting!',
              style: GoogleFonts.lato(
                  // letterSpacing: -3,
                  fontWeight: FontWeight.w800,
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              highlightColor: Colors.greenAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3, color: Colors.black26, spreadRadius: 2)
                  ],
                  color: Color.fromARGB(255, 82, 150, 137),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.lato(
                        // letterSpacing: -3,
                        fontWeight: FontWeight.w800,
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Create an account',
              style: GoogleFonts.lato(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
