import 'package:flutter/material.dart';
import 'package:hupptest/Theme/Color.dart';
import 'package:hupptest/Theme/CustomTextStyle.dart';
import 'package:hupptest/Widgets/CustomOutlineButton.dart';
import 'MenuView.dart';
import 'ResturantDetail.dart';


String image = 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';

class ResturantListView extends StatelessWidget{
  List data=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuto27MT80wpxh4bPeq-3zHdMdFXHe6imXSi45KBk-aKWop26vO3eieJ3nhFPUlw8yklk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZdB_BTEu5En6uPoMaVa3DztL62iQ_Qd-rXhcVmZJF8N_liF88jOseQUpb3cIfAWWn_wg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiwDuBIQNQVGR-OhEEC_ATMkZwmG7Fu7WCGg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQryl7d73lgHMcBBydKLIyrsKbrEGeGZwU_A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuto27MT80wpxh4bPeq-3zHdMdFXHe6imXSi45KBk-aKWop26vO3eieJ3nhFPUlw8yklk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZdB_BTEu5En6uPoMaVa3DztL62iQ_Qd-rXhcVmZJF8N_liF88jOseQUpb3cIfAWWn_wg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiwDuBIQNQVGR-OhEEC_ATMkZwmG7Fu7WCGg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQryl7d73lgHMcBBydKLIyrsKbrEGeGZwU_A&usqp=CAU"
  ];
  List name=[
    "The French Gourmet",
  "The Harbor House Restaurant",
  "Polo Bar",
  "The Salad Life",
  "Tuscany Courtyard",
  "Dine In a Dime",
  "Grill & Chill.",
    "Tuscany Courtyard",
  ];
    List look=[
      "ndian, Fast food, Asian",
      "Indian, Asian",
      "Indian, Asian, Chinese",
      "Mexican",
      "ndian, Fast food, Asian",
      "Indian, Asian",
      "Indian, Asian, Chinese",
      "Mexican",
    ];
    List local=[
"The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",
      "The flavor of your food is what most customers focus on when they are deciding what to eat. The way you engineer your menu can help build anticipation, and a good menu description could even convince a hesitant customer to try something new. With this in mind, it's important to be precise and thorough when choosing words to describe your food's flavor.",

    ];
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return LayoutBuilder(
      builder: (context,constraint){

        double height = constraint.biggest.height;
        double width = constraint.biggest.width;
        return ListView.builder(
          itemBuilder: (context,index){
           return Expanded(
                child: Container(
                  width: width-20,
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MenuView()),
                            );
                          },
                          child: Image.network(data[index],fit: BoxFit.cover,)),
                      Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                      Text(look[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 80),
                        child: Text(local[index],style: TextStyle(fontSize: 9,fontWeight: FontWeight.w100),),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
          );
          },
          itemCount: data.length,
        );
      },
    );
  }
}

class TextSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Burger cafe",style: resturantListTitleText(),),
                Text("Hamburger",style: resturantListSubTitleText())
              ],
            ),
          ),
        ),
        Container(
          child: CustomOutlineButton(
          onPressed: (){

          },
          textStyle: resturantListButton(),
          highlightColor: primaryColor,
          borderColor: primaryColor,
          text: "Ready in 20Min",
          ),
        ),
      ],
    );
  }
}
