import 'package:bmi/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Customdetailscard extends StatefulWidget {
  final String title;
  final String? weightStatus;
  final String description;
  const Customdetailscard({
    super.key,
    required this.weightStatus,
    required this.description,
    required this.title,
  });

  @override
  State<Customdetailscard> createState() => _CustomdetailscardState();
}

class _CustomdetailscardState extends State<Customdetailscard> {
  String? title;
  String? weightStatus;
  String? description;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.green,
      ),

      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "${widget.weightStatus}",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.description,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
