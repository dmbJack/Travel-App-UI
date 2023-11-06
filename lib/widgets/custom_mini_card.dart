import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMiniCard extends StatelessWidget {
  final String imageLink;
  final String labelCard;
  const CustomMiniCard({
    Key? key,
    required this.imageLink,
    required this.labelCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black12,
          )
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageLink), fit: BoxFit.cover),
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 20,
              ),
              Text(labelCard,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w800, fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
