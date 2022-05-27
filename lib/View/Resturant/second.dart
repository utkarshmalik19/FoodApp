import 'package:flutter/material.dart';
import 'package:hupptest/View/Resturant/third.dart';
List am=[];
List im=[];
int count=0;
var t;
class SecondRoute extends StatefulWidget {
  var amount;
  var image;
  SecondRoute({this.amount,this.image});
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    a(widget.amount);
    b(widget.image);
   t= c(widget.amount);
  }

List a(int v){
  am.add(v.toString());
  return am;
}
List b(String v){
    im.add(v);
    return im;
  }
int c(int v) {
  for(var i=0;i<am.length;i++)
    {
      if(count!=0) {
        count= count + int.parse(am[i]);
      }
    }
  return count;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 650,
            child: ListView.builder(itemCount:im.length,itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Container(height: 40,
                      width: 50,
                      child: Image.network(im[index],fit: BoxFit.fill,)),
                  title: Text("Price \$${am[index].toString()}",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
                  subtitle: Text("Your order is added"),
                  trailing: IconButton(
                    onPressed: (){
                      setState(() {
                        am.remove(am[index]);
                        im.remove(im[index]);
                      });
                    },
                      icon:Icon(Icons.close)),
                ),
              );
            }),
          ),
         GestureDetector(
           onTap: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>PaymentDetails(am:am,)),
             );
           },
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: RaisedButton(onPressed: (){
              },
              child: Center(child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>PaymentDetails(am:am,)),
                    );
                  },
                  child: Text("Pay Now"))),),
           ),
         )
        ],
      ),
      );
  }
}

