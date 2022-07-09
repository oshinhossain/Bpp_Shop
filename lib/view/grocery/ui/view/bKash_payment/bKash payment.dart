import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bKashPayment extends StatefulWidget {
  const bKashPayment({Key? key}) : super(key: key);

  @override
  _bKashPaymentState createState() => _bKashPaymentState();
}

class _bKashPaymentState extends State<bKashPayment> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const Favourite()));
          },
          child: Icon(
            Icons.cancel,
            size: 35,
            color: Colors.grey,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 30,
                    offset: Offset(0, 8), // Shadow position
                  ),
                ],
              ),
            ),
            Positioned(
              left: 30,
              right: 20,
              top: 10,
              bottom: 20,
              child: Container(
                height: 300,
                width: 60,
                color: Colors.pink,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: Image(
                        image: AssetImage("images/bKash121.png"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey),
                        color: Colors.pinkAccent,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: RichText(
                              text: TextSpan(
                                  text: "Merchant:  ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Anjuman Mufidul Islam",
                                      style: TextStyle(
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: RichText(
                              text: TextSpan(
                                  text: "Invoice no:  ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "1559040913",
                                      style: TextStyle(
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5),
                            child: RichText(
                              text: TextSpan(
                                  text: "Amount:  ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "BDT 10",
                                      style: TextStyle(
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Your bKash account number",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: TextField(
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            //labelText: 'User Name',
                            hintText: '017000000001',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            checkColor: Colors.black,
                            value: this.value,
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value!;
                               }
                              );
                            },
                          ),
                          RichText(
                            text: TextSpan(
                                text: "I agree to the  ",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                                children: [
                                  TextSpan(
                                    text: "terms and conditions",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 130,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) =>MyCoupon()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "PROCEED",
                                  style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 130,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) =>Cards()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Close",
                                  style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.phoneSquare, size: 15, color: Colors.white,),
                          Text("16247",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
