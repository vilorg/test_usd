import 'package:flutter/material.dart';
import 'package:test_usd/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(deffaultPadding),
      color: blackColor,
      height: 300,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Image.asset(
                      "assets/images/flag_usd.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: deffaultPadding),
                const Text(
                  "USD Account",
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: deffaultPadding),
                const Text(
                  r"$ 180,970.83",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              side: const BorderSide(color: secondaryColor, width: 0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(deffaultPadding / 2),
              ),
            ),
            child: const Text(
              "Hide",
              style: TextStyle(color: secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
