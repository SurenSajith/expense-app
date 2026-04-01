import 'package:flutter/material.dart';
import 'package:flutter_application_1/contants/colors.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 100, fit: BoxFit.cover,),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text("Expenz", style: TextStyle(
            fontSize: 40,
            color: kMainColor,
            fontWeight: FontWeight.bold
            ),
          ),
          ),
      ],
    );
  }
}