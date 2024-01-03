import 'package:dio/dio.dart';
import 'package:flutter_loto_check/model/mega_sena_model.dart';

class LotteryRepository {
  LotteryRepository({required this.dio});
  

  final Dio dio;
  static const String _baseUrl =
      'https://loteriascaixa-api.herokuapp.com/api/megasena/';

  Future<ModelMegaSena> fetchLottery({required int numberLottery}) async {
    try {
      Response response = await dio.get('$_baseUrl$numberLottery');
      return ModelMegaSena.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('${e.response?.statusCode}');
      } else {
        throw Exception('${e.message}');
      }
    }
  }
}
