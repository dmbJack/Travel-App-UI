import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChoice extends StatelessWidget {
  void Function()? func;
  final String label;
  final bool isSelected;
  CustomChoice({
    Key? key,
    this.func,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextButton(
            onPressed: func,
            child: Text(label,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: isSelected
                        ? const Color.fromARGB(255, 54, 134, 56)
                        : Colors.black54)),
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isSelected
                    ? const Color.fromARGB(255, 54, 134, 56)
                    : Colors.transparent),
          )
        ],
      ),
    );
  }
}
