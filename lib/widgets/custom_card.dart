import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String imageLink;
  final int avisNumber;
  final String addressLabel;
  final String countryAndProvince;
  final String price;
  const CustomCard({
    Key? key,
    required this.imageLink,
    required this.avisNumber,
    required this.addressLabel,
    required this.countryAndProvince,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 250,
        height: 310,
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 300,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(blurRadius: 5, color: Colors.black12)
                  ],
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              width: 250,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(imageLink), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 10,
              left: 195,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.white),
                  child: const Icon(Icons.favorite_border),
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 250,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Color.fromARGB(255, 213, 213, 6),
                        ),
                        const Icon(Icons.star,
                            size: 15, color: Color.fromARGB(255, 213, 213, 6)),
                        const Icon(Icons.star,
                            size: 15, color: Color.fromARGB(255, 213, 213, 6)),
                        const Icon(Icons.star,
                            size: 15, color: Color.fromARGB(255, 213, 213, 6)),
                        const Icon(Icons.star,
                            size: 15, color: Color.fromARGB(255, 213, 213, 6)),
                        Text(
                          '($avisNumber)',
                          style: GoogleFonts.lato(
                              fontSize: 12, color: Colors.black45),
                        )
                      ],
                    ),
                    Text(
                      addressLabel,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.locationDot,
                          size: 20,
                          color: Colors.black45,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          countryAndProvince,
                          style: GoogleFonts.lato(
                              fontSize: 16, color: Colors.black45),
                        )
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: price,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 6, 75, 9),
                            fontSize: 19),
                        children: <TextSpan>[
                          TextSpan(
                              text: '/night',
                              style: GoogleFonts.lato(
                                  fontSize: 14, color: Colors.black45)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
