import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  List am;
  PaymentDetails({required this.am});

  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String cardNumber = "5450 7879 4864 7854",
      cardExpiry = "10/25",
      cardHolderName = "Shivam",
      bankName = "ICICI Bank",
      cvv = "456";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text("Payment Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(child :Text("Card Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(height: 8.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  width: 0.5,
                  color:Colors.white,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Perosnal Card",
                              style: TextStyle(fontSize: 18.0)),
                          Container(
                              width: 60.0,
                              child: Icon(Icons.payment,
                                  color: Colors.white, size: 40.0)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card Number",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color:Colors.white,
                                ),
                              ),
                              Text(
                                cardNumber,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                          Container(
                            width: 45.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Exp.",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  cardExpiry,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card Name",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                cardHolderName,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                          Container(
                            width: 45.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CVV",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  cvv,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 48.0,
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        color: Colors.purple,
                        child: Text(
                          "Edit Detail",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        onPressed: () => print("Edit Detail"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(child :Text("Transaction Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                color:Colors.grey,
                border: Border.all(
                  width: 0.5,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: widget.am.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 190.0,
                        child: Text(
                          (index+1).toString(),
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Container(
                        width: 70.0,
                        child: Text(
                          "\$ ${widget.am[index]}",
                          style: TextStyle(
                            fontSize: 16.0,
                            color:Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 0.5,
                    color: Colors.purple,
                  );
                },
              ),
            ),
            SizedBox(height: 8.0),
            RaisedButton(child: Text("Confirm"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>four()),
                );
              },
            )

          ],
        ),
      ),
    );
  }
}

class CreditCard {
}

class four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Thank you"),),
      body: Center(
        child: Text("Thanks for visiting",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
      ),
    )
    );
  }
}
