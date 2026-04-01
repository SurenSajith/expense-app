import 'package:flutter/material.dart';
import 'package:flutter_application_1/contants/colors.dart';
import 'package:flutter_application_1/contants/constant.dart';

class SharedOnboardingScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const SharedOnboardingScreen(
    {super.key, 
    required this.title, 
    required this.imagePath, 
    required this.description
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kdefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 300, fit: BoxFit.cover,),
      
          SizedBox(
            height: 20,
          ),
      
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500
            ),
          ),
      
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: kGrey,
              fontWeight: FontWeight.w500
            ),
            
          )
        ],
      ),
    );
  }
}
