import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar_heading.dart';
import 'curear_list.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarHeading(
                    title: "CheckOut",
                    subTitle: "Give us your shiping address",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: "Shiping Address",
                    size: 16,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.black.withOpacity(0.3),
                    decoration: const InputDecoration(
                      hintText: 'Your Name?',
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black.withOpacity(0.3),
                    decoration: const InputDecoration(
                      hintText: 'Your Phone?',
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black.withOpacity(0.3),
                    decoration: const InputDecoration(
                      hintText: 'Your City?',
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black.withOpacity(0.3),
                    decoration: const InputDecoration(
                      hintText: 'Your State?',
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black.withOpacity(0.3),
                    decoration: const InputDecoration(
                      hintText: 'Your Zip?',
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Select your Qurear",
                    size: 16,
                    textColor: Colors.black,
                  ),
                  CurearList()
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
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
                        "Compleate Checkout",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: () => null,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
