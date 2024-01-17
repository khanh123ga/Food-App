import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';

class Porfilescreen extends StatelessWidget {
  const Porfilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          SizedBox(height: 20),
          Column(
            children: const [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("images/admin.jpg"),
              ),
              SizedBox(height: 20),
              Text(
                "Huỳnh Quốc Khánh",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Infomation your",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "(1/5)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.blue : Colors.black12,
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final cart = profiles[index];
                return SizedBox(
                    width: 160,
                    child: Card(
                      shadowColor: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              cart.icon,
                              size: 30,
                            ),
                            SizedBox(height: 10),
                            Text(
                              cart.title,
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Porfilescreen(),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(cart.ButtomText),
                            ),
                          ],
                        ),
                      ),
                    ));
              },
              separatorBuilder: (context, index) =>
                  Padding(padding: EdgeInsets.only(right: 5)),
              itemCount: profiles.length,
            ),
          ),
          SizedBox(height: 20),
          ...List.generate(
            profileCustoms.length,
            (index) {
              final titles = profileCustoms[index];
              return Card(
                elevation: 4,
                shadowColor: Colors.black12,
                child: ListTile(
                  leading: Icon(titles.icon),
                  title: Text(titles.title),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Porfilescreen(),
                        ));
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class profile {
  final String title;
  final String ButtomText;
  final IconData icon;
  profile({
    required this.title,
    required this.ButtomText,
    required this.icon,
  });
}

List<profile> profiles = [
  profile(
    title: "Set your profile details",
    icon: CupertinoIcons.person_circle,
    ButtomText: "Continue",
  ),
  profile(
    title: "Upload your resume",
    icon: CupertinoIcons.doc,
    ButtomText: "Upload",
  ),
  profile(
    title: "Add your skills",
    icon: CupertinoIcons.square_list,
    ButtomText: "Add",
  ),
];

class profileCustom {
  final String title;
  final IconData icon;
  profileCustom({
    required this.title,
    required this.icon,
  });
}

List<profileCustom> profileCustoms = [
  profileCustom(
    title: "Adtivity",
    icon: Icons.insights,
  ),
  profileCustom(
    title: "Location",
    icon: Icons.local_activity_outlined,
  ),
  profileCustom(
    title: "Notifications",
    icon: CupertinoIcons.bell,
  ),
  profileCustom(
    title: "Logout",
    icon: CupertinoIcons.arrow_right_arrow_left,
  ),
];
