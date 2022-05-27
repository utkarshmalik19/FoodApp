import 'package:flutter/material.dart';
import 'package:hupptest/Theme/Color.dart';
import 'package:hupptest/View/Resturant/PlaceDetailsView.dart';
import 'package:hupptest/View/Resturant/ResturantDetail.dart';

class MenuView extends StatelessWidget {
  List food=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqn68G5rRQ69pWIvvgZDaG8pIvkvf7wZQ4sw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgMjrurECPr9zX08TYcOXsA2TjT8H-LWwWWw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvpJEiQEdeTs_wTbyEyoYumvzs6jTdtdIqO7NHzD-ATpRxr_cV4rw0BR2QAXD2A_I3Zp4&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN5FecCEtIU902bojh5Or4-Kh3cvpkn4FzOUBO12rj4qI-lS1mmzcro_tsY-2D9Zu7Jvg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd2dg1PKM2wrc10T7nKsj1QERL0kKH6tOx_HIwkiqH-N2mfEnc7o9s5FZV3DsBq6Hg2Ko&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqn68G5rRQ69pWIvvgZDaG8pIvkvf7wZQ4sw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgMjrurECPr9zX08TYcOXsA2TjT8H-LWwWWw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvpJEiQEdeTs_wTbyEyoYumvzs6jTdtdIqO7NHzD-ATpRxr_cV4rw0BR2QAXD2A_I3Zp4&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN5FecCEtIU902bojh5Or4-Kh3cvpkn4FzOUBO12rj4qI-lS1mmzcro_tsY-2D9Zu7Jvg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd2dg1PKM2wrc10T7nKsj1QERL0kKH6tOx_HIwkiqH-N2mfEnc7o9s5FZV3DsBq6Hg2Ko&usqp=CAU",
  ];
  List name=[
    "Grilled Chicken",
    "Burger",
    "Goose",
    "Raviol",
    "Gazpacho",
    "Gumbo",
    "Grilled Chicken",
    "Burger",
    "Goose",
    "Raviol",
    "Gazpacho",
    "Gumbo",

  ];
  List number=[
    720,
    400,
    1000,
    367,
    200,
    499,
    720,
    400,
    1000,
    367,
    200,
    499,
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text("Dishes")),
        body: ListView.separated(
            key: new PageStorageKey('resturantMenuItem'),
            itemBuilder: (context, index) {
              return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ResturantDetail(
                          index: number[index], image: food[index], title: name[index])),
                );
              },
               child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 70.0,
                            width: 80.0,
                            padding: EdgeInsets.only(left: 10.0),
                            child: Image.network(food[index],fit: BoxFit.fitHeight,),
                          ),
                          Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                                height: 90.0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            name[index],
                                            style: TextStyle(
                                                fontSize: 16.0, fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Text(
                                          "\$${number[index]}",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: primaryColor,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs",
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 5.0,
              );
            },
            itemCount: 10),
    );
  }
}
