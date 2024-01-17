import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Payment_screen.dart';
import 'package:flutter_application_1/widgetst/conttainer_buton_model.dart';

class CartScreen extends StatelessWidget {
  List<String> imgList = [
    "images/buger bò nướng.jpg",
    "images/burger-ca.jpg",
    "images/bò nướng hành chiên.jpg",
  ];
  List producttitle = [
    "BG bò nướng",
    "BG cá",
    "BG bò hành",
  ];

  List price = [
    "54.000VND",
    "48.000VND",
    "50.000VND",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                    itemCount: imgList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                              splashRadius: 20,
                              activeColor: Colors.red,
                              value: true,
                              onChanged: (val) {},
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imgList[index],
                                height: 80,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  producttitle[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Food",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Checkbox(
                    splashRadius: 20,
                    activeColor: Colors.red,
                    value: false,
                    onChanged: (val) {},
                  ),
                ],
              ),
              Divider(height: 20, thickness: 2, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "152.000 VND",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Paymentcreen(),
                    ),
                  );
                },
                child: ConttainerButtttonmd(
                  itext: "Checkout",
                  containerWith: MediaQuery.of(context).size.width,
                  bgcolor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
