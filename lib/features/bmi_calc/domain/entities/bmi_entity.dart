class BmiResponseEntity {
  final String status;
  final String? error;
  final BmiDataEntity data;

  const BmiResponseEntity({
    required this.status,
    this.error,
    required this.data,
  });
}

class BmiDataEntity {
  final String height;
  final String weight;
  final double bmi;
  final String risk;
  final String summary;
  final String recommendation;

  const BmiDataEntity({
    required this.height,
    required this.weight,
    required this.bmi,
    required this.risk,
    required this.summary,
    required this.recommendation,
  });
}