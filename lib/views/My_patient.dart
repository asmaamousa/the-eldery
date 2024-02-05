import 'package:flutter/material.dart';
import 'package:theeee_eldery/widgets/patient_card.dart';

class Mypatients extends StatelessWidget {
  const Mypatients({super.key});

  @override
  Widget build(BuildContext context) {
     double width= MediaQuery.of(context).size.width;
    double hight= MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(backgroundColor:Colors.transparent,//Color(0xff7296A8) ,
    elevation: 0,
      toolbarHeight: 100,
      ),
    backgroundColor:const Color(0xff7296A8),
    body: Container(
      width: width,
      height: hight,
      padding:EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        
        color: Color(0xffECECEC),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:Radius.circular(60)),
      ),
      //child:Patientcard()
        child:  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
            SliverToBoxAdapter(child: Center(
              child: Text("My Patients",
                      style: TextStyle(
                 color:Color(0xff101A48) ,
                 fontSize: 27,
                 fontWeight:FontWeight.w500,
                      ),
                      ),
            )
          
            
            ),
            SliverToBoxAdapter(child:Patientcard() ),
            SliverToBoxAdapter(child:Patientcard() ),
            SliverToBoxAdapter(child:Patientcard() ),]
       
       
       ),
      ));
   /* Text("My Patients",
        style: TextStyle(
   color:Color(0xff101A48) ,
   fontSize: 27,
   fontWeight:FontWeight.bold,
        ),
        )*/
  }
}