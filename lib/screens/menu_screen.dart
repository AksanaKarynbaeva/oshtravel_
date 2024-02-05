import 'package:flutter/material.dart';
import 'package:oshtravel_/modal.dart';
import 'package:oshtravel_/travel/hotel.dart';


class MenuScreen extends StatefulWidget {
   MenuScreen({super.key});

  final List<Map> myProducts = 
  List.generate(100000, (index) => {"id": index, "name": "Product $index"})
  .toList();

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
 final  List _photos = [
    Data(image: "assets/images/gostnisa.jpg", text: "Мейманкана"),
    Data(image: "assets/images/sulaiman.too.jpg", text: "Сулайман-Тоо"),
    Data(image: "assets/images/cafe.jpg", text: "Кафе"),
    Data(image: "assets/images/osh.meriya.jpg", text: "Мэрия"),
    Data(image: "assets/images/stadion.jpg", text: "Стадион"),
    Data(image: "assets/images/oshmu.jpg", text: "ОшМУ"),
    Data(image: "assets/images/atraksion.jpg", text: "Атракцион"),
    Data(image: "assets/images/bassein.jpg", text: "Бассейин"),
    Data(image: "assets/images/toktogul.park.jpeg", text: "Токтогул парк"),
    Data(image: "assets/images/kinoteatr.jpg", text: "Кинотеатр"),
    Data(image: "assets/images/teatr.jpg", text: "Драмтеатр"),
    Data(image: "assets/images/airport.jpg", text: "Аэропорт"),

  ];

   //_MenuScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width); 
    return Scaffold(
      appBar: AppBar(
        title: const Text ("OshTravel",
        ),
      ),
      body: GridView.builder(
        itemCount: _photos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 5, 
          mainAxisSpacing: 0.02,
          ),
          itemBuilder: (context,index) {
            return Stack(
              children: [
                InkWell(
                  onTap: () {
                    // if (_photos[index].length != null) {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context,)=>const Hotel()));
                    // }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      
                      width: 190,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                        image:  DecorationImage(
                          image: AssetImage(_photos[index].image),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ),
                
                  Positioned(
                  left: 80,
                  top: 130,
                  child: Text(
                    _photos[index].text,style: const TextStyle(
                      color: Colors.white,fontSize: 15,
                    ),
                  ),
                ),
              ],
            );
          },
      ),
    );
    //   children: [
    //     Container(
    //       color: Colors.blue,
    //       child: const Center(
    //         child: Text(
    //           "OshTravel",
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             color: Colors.white, 
    //             fontSize: 30,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}