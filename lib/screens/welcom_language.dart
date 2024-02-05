import 'package:flutter/material.dart';
import 'package:oshtravel_/components/cirkule_avatar.dart';


class WelcomLanguage extends StatelessWidget {
const WelcomLanguage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){


    return Scaffold(
      body: Container(
        width: double.infinity, 
        padding: EdgeInsets.all(10),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/osh-7.jpg"),
          fit: BoxFit.cover,
          ),
         ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(61, 263, 0, 0),
          child: Column(
            children: [
              CirkuleAvatar(image: 'assets/images/kg.png', text: 'Kyrgyz',),
                CirkuleAvatar(image: 'assets/images/ru.jpg', text: 'Russia',),
                 CirkuleAvatar(image: 'assets/images/usa.jpg', text: 'English',),
            ],
          ),
        ),
      ),
     
    );
  }
}

