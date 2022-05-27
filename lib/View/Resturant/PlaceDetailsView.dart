import 'package:flutter/material.dart';
import 'package:hupptest/View/Resturant/second.dart';

class PlaceDetailView extends StatelessWidget{
  var amount;
  var image;
  PlaceDetailView({this.amount,this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        // height: 174,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height:40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(image,fit: BoxFit.fitHeight,),
        ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute(amount: amount,image: image)),
                        );
                      },
                      child: Text("Add to cart")),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.red,
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Total:\n",
                          children: [
                            TextSpan(
                              text: "\$$amount",
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width:190,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 13),),
                  Text("The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 13),),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultButton {
}