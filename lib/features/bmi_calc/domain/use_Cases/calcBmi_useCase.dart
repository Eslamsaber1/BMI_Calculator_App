import 'package:bmi/features/bmi_calc/data/respoitory/bmi_calc_repository.dart';
import 'package:bmi/features/bmi_calc/domain/entities/bmi_entity.dart';
import 'package:bmi/features/bmi_calc/domain/respoitory/base_bmi_calc_repository.dart';

class CalculateBmiUseCase {
  BaseBmiCalcRepository _baseBmiCalcRepository;

  CalculateBmiUseCase(this._baseBmiCalcRepository);

  Future<BmiResponseEntity> calculateBmi({
    required String height,
    required String weight,
    String? unit = 'metric',
  }) {
    return _baseBmiCalcRepository.calculateBmi(height: height, weight: weight);
  }
}



var  x = CalculateBmiUseCase(BmiCalcRepositoryImplementation());