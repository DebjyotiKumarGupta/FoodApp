import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  Widget ListTitle({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 43,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Guest"),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              width: 10,
                            ) // Set the desired radius here
                            ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        ListTitle(icon: Icons.home_outlined, title: "Home"),
        ListTitle(icon: Icons.shop_2_outlined, title: "Shop"),
        ListTitle(icon: Icons.person_outlined, title: "Profile"),
        ListTitle(
            icon: Icons.notifications_on_outlined, title: "Notifications"),
        ListTitle(icon: Icons.star_rate_outlined, title: "Review & Rating"),
        ListTitle(icon: Icons.favorite_border_outlined, title: "WishList"),
        ListTitle(icon: Icons.copy_outlined, title: "Rasie a Complaint"),
        ListTitle(icon: Icons.format_quote_outlined, title: "FAQs"),

        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            height: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Support",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Call us",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "+919382357364",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Mail us",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "karanguptadev123@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
        // ListTitle(icon: Icons.home_outlined, title: "Home"),
        // ListTitle(icon: Icons.home_outlined, title: "Home"),
      ],
    );
  }
}
