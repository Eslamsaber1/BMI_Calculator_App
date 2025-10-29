import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/data/respoitory/bmi_calc_repository.dart';
import 'package:bmi/features/bmi_calc/domain/entities/bmi_entity.dart';
import 'package:bmi/features/bmi_calc/domain/use_Cases/calcBmi_useCase.dart';
import 'package:bmi/features/bmi_calc/presentation/components/customDataCard.dart';
import 'package:bmi/features/bmi_calc/presentation/components/customDetailsCard.dart';
import 'package:bmi/features/bmi_calc/presentation/ui_screen/bmiData_Screen.dart';
import 'package:flutter/material.dart';

class BmidetailsScreen extends StatefulWidget {
  const BmidetailsScreen({
    super.key,
    required this.height,
    required this.weight,
    required this.name,
  });
  final String height;
  final String weight;
  final String name;

  @override
  State<BmidetailsScreen> createState() => _BmidetailsScreenState();
}

class _BmidetailsScreenState extends State<BmidetailsScreen> {
  var useCase = CalculateBmiUseCase(BmiCalcRepositoryImplementation());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: FutureBuilder(
        future: useCase.calculateBmi(
          height: widget.height,
          weight: widget.weight,
        ),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (asyncSnapshot.hasData) {
            BmiDataEntity bmiDataModel=asyncSnapshot.data!.data;
            return Container(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Customdatacard(
                      personName: widget.name,
                      personAge: "A 24 years old male",
                      bmiCalc:bmiDataModel.bmi.round().toDouble(),
                      personHeight: int.parse(widget.height),
                      personWeight: int.parse(widget.weight),
                    ),
                    SizedBox(height: 10),
                    Customdetailscard(
                      weightStatus: bmiDataModel.summary,
                      description:bmiDataModel.recommendation,
                      title:bmiDataModel.risk,
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 332,
                      height: 45,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.darkpurple,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      BmidataScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Text(
                          'Calculate BMI Again',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          if (asyncSnapshot.hasError) {
            return Center(child: Text('Error: ${asyncSnapshot.error}'));
          }
          return Center(child: Text('Something went wrong!'));
        },
      ),
    );
  }
}
