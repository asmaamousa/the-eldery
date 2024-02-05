import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text("How was your experience with Dr.Anya",
             style: TextStyle(color: Color(0xFF3C365F),
     
     fontSize:22,
      fontWeight: FontWeight.bold
     )),
        RatingBar(
          initialRating: 1,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
          direction: Axis.horizontal,
          ratingWidget:RatingWidget(full:image("assets/empty.png" ), half: image("assets/full.png"), empty:image("assets/full.png") ),
        onRatingUpdate: (rating)=>debugPrint(rating.toString())),

      ],
    );
    
  }
  Widget image(String asset){
  return Image.asset(asset,
  width: 25,
  height: 25,
  
  );
  }
}

/* RatingBar.builder(
      itemCount: 5,
      initialRating: 3,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemBuilder: (context,_)=>Icon(Icons.star_rounded,
      color: Color(0xFF0D3E61),
      ),
     onRatingUpdate: (rating){}
     ); */