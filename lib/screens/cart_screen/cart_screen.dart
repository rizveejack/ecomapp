import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_bottom_sheet.dart';
import '../checkout_screen/checkout_screen.dart';
import 'product_counter.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "My Cart",
                size: 21,
                textColor: Colors.black87,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/banner.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const CustomText(
                                          text: "Product name",
                                          size: 20,
                                          textColor: Colors.black87,
                                          isellipsis: true,
                                          isHeading: true,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: const Icon(
                                            Icons.delete,
                                            size: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle),
                                            ),
                                            const SizedBox(width: 10),
                                            const CustomText(
                                              text: "Color",
                                              size: 13,
                                              textColor: Colors.black87,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 20),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  shape: BoxShape.circle),
                                              child: const Center(
                                                child: CustomText(
                                                  text: "M",
                                                  size: 10,
                                                  textColor: Colors.black87,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            const CustomText(
                                              text: "Size",
                                              size: 13,
                                              textColor: Colors.black87,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CustomText(
                                          text: "\$4350.00",
                                          size: 16,
                                          textColor: Colors.black87,
                                        ),
                                        Container(
                                          width: 80,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const ProductCounter(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomSheet: CustomBottonSheet(
        buttonText: "Checkout",
        icon: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 16,
        ),
        price: "\$4230.00",
        priceHeading: "Total Price",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return const CheckoutScreen();
            }),
          );
        },
      ),
    );
  }
}
