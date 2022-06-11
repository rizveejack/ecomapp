// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          elevation: 5.0,
          color: Colors.transparent,
          type: MaterialType.button,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashFactory: InkRipple.splashFactory,
            highlightColor: Colors.black.withOpacity(0.1),
            splashColor: Colors.white.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: const Text(
                "ProfileScreen",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () => null,
          ),
        ),
      ),
    );
  }
}
