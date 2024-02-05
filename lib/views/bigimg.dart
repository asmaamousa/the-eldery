import 'package:flutter/material.dart';
import 'package:theeee_eldery/views/doctor_homepage.dart';
import 'package:theeee_eldery/widgets/image.dart';

class bigimg extends StatelessWidget {
  const bigimg({super.key});

  @override
  Widget build(BuildContext context) {
     double width= MediaQuery.of(context).size.width;
    double hight= MediaQuery.of(context).size.height;
    return  Scaffold( appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
       leading:  IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Doctor_homepage();
         }));}, icon: Icon(Icons.arrow_back,
       color: Color(0xFF3C365F),
       )//Icon(Icons.arrow_back,
      
       
       ),
    
     ),
      backgroundColor: Colors.transparent,
      body:Center(child:Container(

            width: width,
            height: hight*(3/5),

             decoration:  const BoxDecoration(image:  DecorationImage(image: AssetImage('assets/patient.jpeg'),
             fit: BoxFit.fill
         ),
        // borderRadius: BorderRadius.circular(360),
         ),
        
         ),));
  }
}
