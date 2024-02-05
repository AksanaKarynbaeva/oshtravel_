import 'package:flutter/material.dart';
import 'package:oshtravel_/screens/welcom_language.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
    padding: const EdgeInsets.all(10),   
       decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/osh-7.jpg"),  
            fit: BoxFit.cover,
            ),
          ),
        child: const Column(
          children: [
            Padding(
            padding: EdgeInsets.fromLTRB(50, 100, 50, 0),
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/images/osh1.jpg"),
            ),
          ),
          SizedBox(height: 100,
          ),
            Text("OshTravel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 70
              ),
            ),
          ], 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => const WelcomLanguage(),
          ),
         );
        },
        child: const Icon(Icons.publish_outlined),
      ),
    );
  }
}
