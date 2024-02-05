import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Hotel extends StatefulWidget {
  const Hotel({ Key? key });

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  final List<Widget> myitems = [
    Image.asset('assets/images/hotel1.jpg'),
    Image.asset('assets/images/hotel2.jpg'),
    Image.asset('assets/images/hotel3.jpg'),
    Image.asset('assets/images/hotel4.jpg'),

  ];

  final List<String> surot = [
    'assets/images/hotel1.jpg',
    'assets/images/hotel2.jpg',
    'assets/images/hotel3.jpg',
    'assets/images/hotel4.jpg', 
  ];



  int myCurrentIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Мейманкана"),
        centerTitle: true,
        elevation: 3, 
        backgroundColor: const  Color.fromARGB(255, 126, 6, 6),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                height: 200,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  }
                 );
                }
              ),
               items: myitems,
            ),
            AnimatedSmoothIndicator(activeIndex: myCurrentIndex, 
            count: myitems.length,
            effect: WormEffect(
              dotHeight: 13,
              dotWidth: 13,
              spacing: 15,
              dotColor: const Color.fromARGB(255, 165, 164, 164),
              activeDotColor: Colors.grey.shade900,
              paintStyle: PaintingStyle.fill,
              ),
            ),
            ListView.builder(
          shrinkWrap: true,
          itemCount:surot.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              height: 220,
              width: double.infinity,
              color: Color.fromARGB(255, 230, 143, 143),
              margin: const EdgeInsets.symmetric(vertical: 8), 
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('$surot'),
                    ),
                  ),
                // child: Image.asset('$surot', height: 200,
                // ),
              ),   
            );
          },
        ),
          ],
        ),

        //   ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: 5,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       alignment: Alignment.center,
        //       height: 100,
        //       color: Colors.grey.shade300,
        //       margin: const EdgeInsets.symmetric(vertical: 8),
        //       child: Text(
        //         'Item $index',
        //         style: const TextStyle(fontSize: 24),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}