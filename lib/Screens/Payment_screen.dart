import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/OrderCfscreen.dart';
import 'package:flutter_application_1/Screens/Shoppingadd_screen.dart';
import 'package:flutter_application_1/widgetst/conttainer_buton_model.dart';

class Paymentcreen extends StatefulWidget {
  const Paymentcreen({super.key});

  @override
  State<Paymentcreen> createState() => _PaymentcreenState();
}

class _PaymentcreenState extends State<Paymentcreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 1
                      ? Border.all(width: 1, color: Colors.red)
                      : Border.all(width: 0.3, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Colors.red),
                            Text(
                              "MoMo",
                              style: _type == 1
                                  ? TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/MoMo_Logo.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 2
                      ? Border.all(width: 1, color: Colors.red)
                      : Border.all(width: 0.3, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 2,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Colors.red),
                            Text(
                              "VN Pay",
                              style: _type == 2
                                  ? TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/vnpay.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 3
                      ? Border.all(width: 1, color: Colors.red)
                      : Border.all(width: 0.3, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 3,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Colors.red),
                            Text(
                              "Vettel Pay",
                              style: _type == 3
                                  ? TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/viettelpay-1.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: _type == 4
                      ? Border.all(width: 1, color: Colors.red)
                      : Border.all(width: 0.3, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: 4,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Colors.red),
                            Text(
                              "Ngân hàng",
                              style: _type == 4
                                  ? TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/agribank.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub-Total",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "152.000 VND",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "25.000 VND",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "177.000 VND",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderCfscreen(),
                    ),
                  );
                },
                child: ConttainerButtttonmd(
                  itext: "Confirm Payment",
                  containerWith: size.width,
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
