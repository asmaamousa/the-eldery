//import 'dart:ffi';


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:theeee_eldery/views/bigimg.dart';

class image extends StatefulWidget {
  image({Key? key});

  @override
  State<image> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<image> {
  File? imag;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: hight,
      alignment: Alignment.topCenter,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const bigimg();
              }));
            },
            
            child:
            imag==null?
             const CircleAvatar(
              backgroundColor:  Color.fromARGB(81, 103, 93, 93),
              backgroundImage:AssetImage("assets/emptyprofile.jpeg") ,//imag == null ? Image.asset("assets/emptyprofile.jpeg") : FileImage(imag!),
              maxRadius: 95,
            ): CircleAvatar(
              backgroundColor:  const Color.fromARGB(81, 103, 93, 93),
              backgroundImage:FileImage(imag!),
              maxRadius: 95,
            )
          ),
          ElevatedButton(
            onPressed: () {
              pickImage();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7296A8),
              shape: const CircleBorder(),
            ),
            child: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imag = File(pickedFile.path);
      });
    }
  }
}




/*class image extends StatefulWidget {
  
   image({super.key});
   

  @override
  State<image> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<image> {
  File? imag;
  @override
  Widget build(BuildContext context) {
     double width= MediaQuery.of(context).size.width;
    double hight= MediaQuery.of(context).size.height;
   return  Container(
     
          
            width: width,
            height: hight,
            alignment:Alignment.topCenter,

          child:Stack(
            alignment : AlignmentDirectional.bottomEnd,
            children:[GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                   return  const bigimg();
         }));},
      child:  CircleAvatar(

           backgroundColor: const Color.fromARGB(81, 103, 93, 93),
           backgroundImage: imag ==null ?  null:  FileImage(imag!),
           maxRadius: 95,
            /* decoration:  BoxDecoration(image: const DecorationImage(image: AssetImage('assets/patient.jpeg'),
             fit: BoxFit.fill
         ),
         borderRadius: BorderRadius.circular(360),
         ),*/
        
         ),
            ),

         ElevatedButton(onPressed: (){
        // ImagePicker.pickImage(source: ImageSource.camera);
            pickImage(context);

         },
            style:ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7296A8),
              shape: const CircleBorder(),
           
            ),
            
            //width: 60,
            //height: 60,
             // decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
             // color: Color(0xff7296A8),
             // ),
             child://const ImageIcon(AssetImage('assets/camera.png')) 
             const  Icon(Icons.camera_alt_outlined,
                    color: Colors.white,
             )
                    
                    ),
           
         
         ]
          ),
            
         
         
         );
         
  }
   void pickImage(BuildContext context) async {
    var pickedimg = await ImagePicker().pickImage(source: ImageSource.gallery);

    
     setState((){
        imag= pickedimg as File?;
     }); 
      
  }
}*/








/*class image extends StatelessWidget {
   File? imag;
   image({super.key,this.imag});
   void pickImage(BuildContext context) async {
    final pickedimg = await ImagePicker().pickImage(source: ImageSource.gallery);

    
     setState((){});    //getImage(source: ImageSource.camera);
    // Do something with the picked image file
  }
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double hight= MediaQuery.of(context).size.height;
   return  Container(
     
          
            width: width,
            height: hight,
            alignment:Alignment.topCenter,

          child:Stack(
            alignment : AlignmentDirectional.bottomEnd,
            children:[GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                   return bigimg();
         }));},
      child: const CircleAvatar(

           backgroundColor: Color.fromARGB(81, 103, 93, 93),
           backgroundImage: AssetImage('assets/patient.jpeg') ,
           maxRadius: 95,
            /* decoration:  BoxDecoration(image: const DecorationImage(image: AssetImage('assets/patient.jpeg'),
             fit: BoxFit.fill
         ),
         borderRadius: BorderRadius.circular(360),
         ),*/
        
         ),
            ),

         ElevatedButton(onPressed: (){
        // ImagePicker.pickImage(source: ImageSource.camera);
            pickImage(context);

         },
            style:ElevatedButton.styleFrom(
              backgroundColor: Color(0xff7296A8),
              shape: CircleBorder(),
           
            ),
            
            //width: 60,
            //height: 60,
             // decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
             // color: Color(0xff7296A8),
             // ),
             child://const ImageIcon(AssetImage('assets/camera.png')) 
             const  Icon(Icons.camera_alt_outlined,
                    color: Colors.white,
             )
                    
                    ),
           
         
         ]
          ),
            
         
         
         );
         
  }
 /* void pickImage()async{
   //final pic=pickImage();
   await ImagePicker.pickImage(source: ImageSource.camera);
//final picker = ImagePicker();
    //final pickedFile = await picker.getImage(source: ImageSource.gallery);
  }*/
}
*/