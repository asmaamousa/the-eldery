import 'package:flutter/material.dart';

class Opinion extends StatefulWidget {
  const Opinion({super.key});

  @override
  State<Opinion> createState() => _OpinionState();
}

class _OpinionState extends State<Opinion> {
  String? opinion;
  @override
  Widget build(BuildContext context) {

    return Column(
      
          
        children: [
         const  Padding(
            padding:EdgeInsets.only(right:150,top:25,bottom: 14),
            child: Text("Write your Review",
            
            style: TextStyle(color: Color(0xff3C365F),
            fontSize: 22,
            fontWeight: FontWeight.bold
            ),
            ),
          ),
          Container(
        height: 123,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade300,
        ),
        child:const Padding(padding: EdgeInsets.symmetric(horizontal: 20) ,
        child: TextField(
        
        decoration: InputDecoration(
        
          
        hintText: "your Review here",
         border:InputBorder.none,
         
         ),
       ),
       )
       ),
      
      
      
      
      const Padding(
         padding:  EdgeInsets.only(right:50,top: 25,bottom: 7),
         child:  Text("Would you recommend Dr.Anya to your friends?",
         style: TextStyle(fontSize: 20,
         fontWeight: FontWeight.w600,
         color:Color(0xFF3C365F),
          //fontFamily:"mona sans"
               
         ),
         ),
       ),
       
      
       //radio button
          Row(
          
            children: [
              Radio(
                  value: 'yes',
                  activeColor:Color(0xff101A48),
                  groupValue: opinion,
                  onChanged: (value) {
                    setState(() {
                      opinion=value;
                    });
                  }),
               const Text(
                'Yes',
                style: TextStyle(
                  
                  fontSize: 16,
                  color: Color(0xff101A48),
                ),
              ),
             const  SizedBox(
                width: 30,
              ),
              Radio(
                  value: 'No',
                   activeColor:Color(0xff101A48),
                  groupValue:opinion,
                  onChanged: (value) {
                   setState(() {
                     opinion=value;
                   });
                  }),
              const Text(
                'No',
                style: TextStyle(
                 
                  fontSize: 16,
                    color: Color(0xff101A48)
                ),
              )
            ],
          ),
      
      
      
      //buttons
          Container(
            decoration: BoxDecoration(),
            child: Row(children: [
            OutlinedButton(style:OutlinedButton.styleFrom(
                primary: Color(0xff101A48),
                 
                padding: const EdgeInsets.symmetric(horizontal:45,vertical:17)
                           ),
                onPressed:(){}, child:const Text("Cancel",
                style: TextStyle(color: Color(0xff101A48),
                fontSize: 22,
                //fontFamily:
                ),
                )
                ),
                  
                
                SizedBox(width: 30,),
                
              ElevatedButton(
                
               style: ElevatedButton.styleFrom(
                primary: Color(0xff101A48),
                padding: EdgeInsets.symmetric(horizontal:45,vertical:17)
                           ),
                onPressed:(){}, child:const Text("Submit",
                style: TextStyle(color: Colors.white,
                fontSize: 22,
                //fontFamily:
                ),
                )
                ),
                  
               
            ],),
          )
        ],
      );
  }
}