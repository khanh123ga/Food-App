import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Cart_screen.dart';
import 'package:flutter_application_1/widgetst/conttainer_buton_model.dart';

class ProductDetailPopup extends StatelessWidget {
  final istyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.width / 2.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Số phần", style: istyle),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Text("-", style: istyle),
                              SizedBox(width: 30),
                              Text("1", style: istyle),
                              SizedBox(width: 30),
                              Text("+", style: istyle),
                              SizedBox(width: 30),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment", style: istyle),
                      Text(
                        "\$54.000VND",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      );
                    },
                    child: ConttainerButtttonmd(
                      containerWith: MediaQuery.of(context).size.width / 1.2,
                      itext: "Checkout",
                      bgcolor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: ConttainerButtttonmd(
        containerWith: MediaQuery.of(context).size.width / 1.4,
        itext: "Buy now",
        bgcolor: Colors.red,
      ),
    );
  }
}
