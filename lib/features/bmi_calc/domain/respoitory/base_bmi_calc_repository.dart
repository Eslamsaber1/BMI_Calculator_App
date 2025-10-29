import 'package:bmi/features/bmi_calc/domain/entities/bmi_entity.dart';

abstract class BaseBmiCalcRepository {



  Future<BmiResponseEntity> calculateBmi({
    required String height,
    required String weight,
    String? unit = 'metric',
  });
}