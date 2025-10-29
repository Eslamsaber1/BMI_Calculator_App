import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/presentation/ui_screen/bmiData_Screen.dart';
import 'package:flutter/material.dart';

class OnboardingscreenCard extends StatelessWidget {
  const OnboardingscreenCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Know Your Body Better ,      Get Your BMI Score in Less Than a Minute!",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "It takes just 30 seconds – and your health is worth it!",
            style: TextStyle(
              color: AppColors.offwhite,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 330,
            child: Divider(color: AppColors.offwhite)),
          SizedBox(height: 15),
          SizedBox(
            width: 332,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BmidataScreen()),
                  (route) => false,
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(AppColors.darkpurple),
              ),
              child: Text(
                "Get Start",
                style: TextStyle(color: AppColors.white,
                fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
