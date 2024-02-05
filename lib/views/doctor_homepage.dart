import 'package:flutter/material.dart';
import 'package:theeee_eldery/views/My_patient.dart';
import 'package:theeee_eldery/widgets/image.dart';

class Doctor_homepage extends StatelessWidget {
  const Doctor_homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.transparent,//Color(0xff7296A8) ,
    elevation: 0,
      toolbarHeight: 100,
      ),



    backgroundColor:const Color(0xff7296A8),

    body: Container(

      padding:EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        color: Color(0xffECECEC),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:Radius.circular(60)),
      ),
 //Column(children: [
   child:  CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
     //image
   
    SliverToBoxAdapter(child:SizedBox(
     height: 170,
    child: Container(child: image()),
   
    ),
   
    ),
   
    //container
     SliverToBoxAdapter(
      child: GestureDetector(
      onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Mypatients();
         }));},
       child: Container(
         margin: EdgeInsets.only(top:100,right: 30,left: 30),
        decoration: BoxDecoration(color: Color.fromARGB(81, 185, 181, 181),
        borderRadius: BorderRadius.circular(30)
        ),
        height: 123,
        width: 359,
        child:const Center(
          child:  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             
            children: [
              
              Text("My Patients",
              
              style: TextStyle(color: Color(0xFF3C365F),
       
           fontSize: 22,
              
              ),
            
            ),
            
           /*  Icon(Icons.assist_walker,
           color: Color(0xFF3C365F),
           size: 50,
           
           ),*/
            Image(image:AssetImage("assets/do.png"))
          ]),
        ),
        
           
           ),
     )
     )


   ]),

    ),
      
    );
  }
}