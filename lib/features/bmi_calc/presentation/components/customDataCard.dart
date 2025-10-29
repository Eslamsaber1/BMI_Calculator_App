import 'package:bmi/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Customdatacard extends StatefulWidget {
  final String personName;
  final String personAge;
  final double bmiCalc;
  final int personHeight;
  final int personWeight;
  const Customdatacard({
    super.key,
    required this.personName,
    required this.personAge,
    required this.bmiCalc,
    required this.personHeight,
    required this.personWeight,
  });

  @override
  State<Customdatacard> createState() => _CustomdatacardState();
}

class _CustomdatacardState extends State<Customdatacard> {
  String? personName;
  String? personAge;
  double? bmiCalc;
  int? personHeight;
  int? personWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.purple,
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                widget.personName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                widget.personAge,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                widget.bmiCalc.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "BMI Calc",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "${widget.personHeight} cm",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: AppColors.white,
                          ),
                        ),
                        Text("Height",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: AppColors.white,
                          ),),
                      ],
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 10,
                      child: VerticalDivider(
                        color: AppColors.white,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text("${widget.personWeight} kg",style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: AppColors.white,
                          ),),
                        Text("Weight",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: AppColors.white,
                          ),),
                      ],
                      
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              SvgPicture.asset(
                'assets/Vector.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
