import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/OrderCfscreen.dart';
import 'package:flutter_application_1/widgetst/conttainer_buton_model.dart';

class Shoppingadd extends StatelessWidget {
  const Shoppingadd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Shipping Address"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Numbers",
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Address",
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderCfscreen()),
                    );
                  },
                  child: ConttainerButtttonmd(
                    itext: "Add Address",
                    containerWith: MediaQuery.of(context).size.width,
                    bgcolor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
