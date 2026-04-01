import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/onboarding_data.dart';
import 'package:flutter_application_1/contants/colors.dart';
import 'package:flutter_application_1/screens/onboarding/front_page.dart';
import 'package:flutter_application_1/screens/onboarding/shared_onboarding_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  children: [
                    FrontPage(),
                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[0].title,
                      imagePath: OnboardingData.onboardingDataList[0].imagePath,
                      description:
                          OnboardingData.onboardingDataList[0].description,
                    ),

                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[1].title,
                      imagePath: OnboardingData.onboardingDataList[1].imagePath,
                      description:
                          OnboardingData.onboardingDataList[1].description,
                    ),

                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[2].title,
                      imagePath: OnboardingData.onboardingDataList[2].imagePath,
                      description:
                          OnboardingData.onboardingDataList[2].description,
                    ),

                    Container(color: Colors.blue),
                    Container(color: Colors.yellow),
                  ],
                ),

                // Page dot indicator
                Container(
                  alignment: Alignment(0, 0.75),
                  
                  child: SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: WormEffect(
                    activeDotColor: kMainColor,
                    dotColor: kLightGrey, 
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
