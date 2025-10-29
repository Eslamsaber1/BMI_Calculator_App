import 'package:bmi/features/bmi_calc/presentation/components/onboarding_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              OnboardingscreenCard(), 
              Positioned(
                top: -305, 
                child: SvgPicture.asset(
                  'assets/onboardingimage.svg',
                  width: 334,
                  height: 329,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
