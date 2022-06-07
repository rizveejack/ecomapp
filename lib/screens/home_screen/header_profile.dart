import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage("assets/images/man.jpg"),
                    fit: BoxFit.fitHeight),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Good Morning",
                  size: 15,
                  textColor: Colors.black.withOpacity(0.4),
                ),
                CustomText(
                  text: "Andrew Gorfild",
                  size: 17,
                  isHeading: true,
                  textColor: Colors.black.withOpacity(0.7),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_rounded,
                color: Colors.black.withOpacity(0.4),
              ),
            )
          ],
        )
      ],
    );
  }
}
