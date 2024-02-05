

import 'package:flutter/material.dart';
import 'package:theeee_eldery/widgets/image_review.dart';
import 'package:theeee_eldery/widgets/opinion.dart';
import 'package:theeee_eldery/widgets/stars.dart';

class review extends StatelessWidget {
  const review({super.key});

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      //Color(0xffF8F8F8),
     appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
       leading: const Icon(Icons.arrow_back,
       color: Color(0xFF3C365F),
       
       ),
      title:const Text("Write a Review",
      style: TextStyle(color: Color(0xFF3C365F),
      fontWeight: FontWeight.bold
      ),
      ) ,
    
     ),
     body:const Padding(
       padding:  EdgeInsets.only(left: 20),
       child:  CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
            SliverToBoxAdapter(child:  SizedBox(height: 170,
                  child:imagereview()),
        ),

              SliverToBoxAdapter( child:  Stars(),),
              
             SliverToBoxAdapter( child:   Opinion()),

     ],)
     )
        
       
     
   );
  }
}
/*text1

const Text("How was your experience with Dr.Anya",
     style: TextStyle(color: Color.fromARGB(255, 13, 78, 124),
     fontSize:20,
      fontWeight: FontWeight.bold
     ),
     )*/

     /* write preview 

     Padding(padding: EdgeInsets.symmetric(horizontal:20),
     child: Container(
      height: 123,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade300,
      ),
      child:Padding(padding: EdgeInsets.symmetric(horizontal: 20) ,
      child: TextField(
      
      decoration: InputDecoration(
      
        
      hintText: "your Review here",
       border:InputBorder.none,
       
       ),
     ),
     )
     )
     )*/
    /* const Text("Would you recommend Dr.Anya to your friends?",
     style: TextStyle(fontSize: 20,
     fontWeight: FontWeight.w600,
     color:Color(0xFF3C365F),
      //fontFamily:"mona sans"

     ),
     )*/
    