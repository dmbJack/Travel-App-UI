import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_choice.dart';
import '../widgets/custom_mini_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> choicing = [true, false, false, false];
  toChoice({required int numberChoice}) {
    for (var i = 0; i < choicing.length; i++) {
      choicing[i] = false;
    }
    choicing[numberChoice] = true;
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex;
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex = 0,
        containerHeight: 45,
        // curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.card_travel),
            title: const Text('Travel'),
            activeColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite_sharp),
            title: const Text(
              'Favorite',
            ),
            activeColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Personal'),
            activeColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 35,
                        color: Colors.grey,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Find a place for yourself',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 53,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(2, 3),
                        color: Colors.black12),
                  ],
                ),
                child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 35,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle:
                          GoogleFonts.lato(fontSize: 20, color: Colors.grey)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomChoice(
                      label: 'Hotels',
                      isSelected: choicing[0],
                      func: () {
                        setState(() {
                          toChoice(numberChoice: 0);
                        });
                      },
                    ),
                    CustomChoice(
                      label: 'Things to do',
                      isSelected: choicing[1],
                      func: () {
                        setState(() {
                          toChoice(numberChoice: 1);
                        });
                      },
                    ),
                    CustomChoice(
                      label: 'Events',
                      isSelected: choicing[2],
                      func: () {
                        setState(() {
                          toChoice(numberChoice: 2);
                        });
                      },
                    ),
                    CustomChoice(
                      label: 'Sights',
                      isSelected: choicing[3],
                      func: () {
                        setState(() {
                          toChoice(numberChoice: 3);
                        });
                      },
                    )
                  ],
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:  [
                    CustomCard(
                        imageLink:
                            'https://images.unsplash.com/photo-1657906887451-ddea412e6cc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        avisNumber: 347,
                        addressLabel: 'Casa Las Tortugas',
                        countryAndProvince: 'Av Damero, Mexico',
                        price: '\$1,260'),
                    CustomCard(
                        imageLink:
                            'https://images.unsplash.com/photo-1660262871193-67b6dee25ef0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
                        avisNumber: 234,
                        addressLabel: 'Bournemouth',
                        countryAndProvince: 'UK',
                        price: '\$1,100'),
                    CustomCard(
                        imageLink:
                            'https://images.unsplash.com/photo-1660361339262-6158fc384861?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
                        avisNumber: 347,
                        addressLabel: 'Nowhere',
                        countryAndProvince: 'Global',
                        price: '\$1,100')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: GoogleFonts.lato(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:  [
                    CustomMiniCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                      labelCard: 'Mountains',
                    ),
                    CustomMiniCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60',
                      labelCard: 'Beach',
                    ),
                    CustomMiniCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1425913397330-cf8af2ff40a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
                      labelCard: 'Forest',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
