import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import '../notification_screen/notification_screen.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/man.jpg"),
                      fit: BoxFit.fitHeight),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Good Morning",
                    size: 14,
                    textColor: Colors.black.withOpacity(0.4),
                  ),
                  CustomText(
                    text: "Andrew Gorfild",
                    size: 15,
                    isHeading: true,
                    textColor: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const NotificationScreen();
                }),
              );
            },
            icon: Icon(
              Icons.notifications_active_rounded,
              color: Colors.black.withOpacity(0.4),
            ),
          )
        ],
      ),
    );
  }
}
