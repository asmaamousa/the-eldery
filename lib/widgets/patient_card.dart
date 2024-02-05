import 'package:flutter/material.dart';
import 'package:theeee_eldery/widgets/image.dart';

class Patientcard extends StatelessWidget {
  const Patientcard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:20,right: 20,top: 40),
      child: Container(
        
       height:123 ,
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:const Color.fromARGB(81, 103, 93, 93),
          
        ),
       child:
         Row(children: [
            SizedBox(
              width: 120,
              child: Container(decoration: const  BoxDecoration(image:  DecorationImage(image: AssetImage("assets/patient.jpeg"),
               fit: BoxFit.fill
                       ),
                      borderRadius: BorderRadius.all( Radius.circular(30)),
                       ),
                      
                       ),
            ),
          
              const Padding(
                padding:  EdgeInsets.all(20),
                child: Column(children: [
                 Text("Anya Geraldine",
                 style: TextStyle(fontSize: 22,
                 color: Color(0xFF3C365F)
                 ),
                 ),
                   Padding(
                     padding: EdgeInsets.only(top:20),
                     child: Row(children: [
                      Icon(Icons.local_phone_outlined),
                       Icon(Icons.chat_outlined),
                        Icon(Icons.location_on_outlined),
                         Icon(Icons.heart_broken_rounded),
                     ],),
                   )  
                ],),
              )
        ],),
      ),
    );
  }
}
 /*Container(
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:const Color.fromARGB(81, 103, 93, 93),
        
      ),
     /* child:
      const Row(children: [
          Image(image: AssetImage("assets/patient.jpeg")),

      ],),*/
    );*/