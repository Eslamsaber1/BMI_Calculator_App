
import 'package:bmi/features/bmi_calc/data/models/bmi_models.dart';
import 'package:bmi/features/bmi_calc/domain/respoitory/base_bmi_calc_repository.dart';
import 'package:dio/dio.dart';

class BmiCalcRepositoryImplementation extends BaseBmiCalcRepository {
  @override
  Future<BmiResponseModel> calculateBmi({
    required String height,
    required String weight,
    String? unit = 'metric',
  }) async {
    print('start');
    var dio = Dio();
    try {
      var res = await dio.get(
        'https://api.apiverve.com/v1/bmicalculator?weight=$weight&height=$height&unit=$unit',
        options: Options(
          headers: {
          "x-api-key": "634c6002-a9f1-4907-9c47-d45fa8a07290",
          "Accept": "application/json",
        },
      ),
    );
    print(res.data);
    var data = BmiResponseModel.fromJson(res.data);
    return data;
    } catch
    (e) {
      if(e is TypeError){
        print(e.stackTrace);
      }
      print('Error occurred: $e');
      rethrow;
    }
    
  }
}
