import 'package:flutter/material.dart';

class imagereview extends StatelessWidget {
  const imagereview({super.key});

  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double hight= MediaQuery.of(context).size.height;
   return  Container(
     
          
            width: width,
            height: hight,
            alignment:Alignment.topCenter,

          
           
             child:Container(

            width: 160,
            height: 160,

             decoration:  BoxDecoration(image: const DecorationImage(image: AssetImage("assets/patient.jpeg"),
             fit: BoxFit.fill
         ),
         borderRadius: BorderRadius.circular(360),
         ),
        
         ),


   );
         
  }
}
