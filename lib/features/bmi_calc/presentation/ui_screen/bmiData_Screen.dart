import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/presentation/components/customTextForm_Field.dart';
import 'package:bmi/features/bmi_calc/presentation/ui_screen/bmiDetails_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BmidataScreen extends StatefulWidget {
  const BmidataScreen({super.key});

  @override
  State<BmidataScreen> createState() => _BmidataScreenState();
}

class _BmidataScreenState extends State<BmidataScreen> {
  String? checkGender;

  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "BMI",
          style: TextStyle(
            color: AppColors.green,
            fontWeight: FontWeight.bold,
            letterSpacing: 6,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyfortexts,
                ),
              ),
              SizedBox(height: 10),
              CustomTextField(
                keyboardType: TextInputType.text,
                hintText: "Enter your name",
                controller:nameController,
              ),
              SizedBox(height: 20),
              Text(
                "Birth Date",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyfortexts,
                ),
              ),
              SizedBox(height: 10),
              const CustomTextField(
                keyboardType: TextInputType.datetime,
                hintText: "DD / MM / YYYY",
              ),
              SizedBox(height: 20),
              Text(
                "Choose Gender",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyfortexts,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            checkGender = "male";
                            print('$checkGender');
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  checkGender == 'male'
                                      ? AppColors.green
                                      : Colors.transparent,
                            ),
                          ),
                          child: SvgPicture.asset("assets/male.svg"),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Male"),
                    ],
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkGender = "female";
                        print('$checkGender');
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  checkGender == 'female'
                                      ? AppColors.green
                                      : Colors.transparent,
                            ),
                          ),
                          child: SvgPicture.asset("assets/female.svg"),
                        ),
                        SizedBox(height: 10),
                        Text("Female"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Your Height(cm)",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.greyfortexts,
                ),
              ),
              SizedBox(height: 10),

              CustomTextField(
                prefixIcon: Icons.remove,
                suffixIcon: Icons.add,
                controller: heightController,
                keyboardType: TextInputType.number,
                hintText: "Enter height",
              ),

              SizedBox(height: 10),
              Text(
                "Your Weight(kg)",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.greyfortexts,
                ),
              ),
              SizedBox(height: 10),

              CustomTextField(
                prefixIcon: Icons.remove,
                suffixIcon: Icons.add,
                controller: weightController,
                keyboardType: TextInputType.number,
                hintText: "Enter weight",
              ),

              SizedBox(height: 20),
              SizedBox(
                width: 332,
                child: ElevatedButton(
                  onPressed: () {
                    print("Height: ${heightController.text}");
                    print("Weight: ${weightController.text}");
                    print("Gender: $checkGender");

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => BmidetailsScreen(
                              height: heightController.text,
                              weight: weightController.text,
                              name: nameController.text,
                            ),
                      ),
                      (route) => false,
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      AppColors.darkpurple,
                    ),
                  ),
                  child: Text(
                    "Calculate BMI",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
