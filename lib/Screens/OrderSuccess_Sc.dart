import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/navigation_screen.dart';
import 'package:flutter_application_1/widgetst/conttainer_buton_model.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("images/app_logo.png"),
              Text(
                "Success!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
              Text("Your oder will be delivered soon."),
              Text("Thank you! For choosing our app."),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigationscreen(),
                  ),
                );
              },
              child: ConttainerButtttonmd(
                itext: "Contine Shop",
                containerWith: MediaQuery.of(context).size.width,
                bgcolor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
