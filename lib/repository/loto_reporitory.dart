import 'package:dio/dio.dart';
import 'package:flutter_loto_check/model/mega_sena_model.dart';

class LotteryRepository {
  LotteryRepository({required this.dio});

  final Dio dio;
  static const String _baseUrl =
      'https://servicebus2.caixa.gov.br/portaldeloterias/api/megasena/';

  Future<MegaSenaModel> fetchLottery({required int numberLottery}) async {
    try {
      Response response = await dio.get('$_baseUrl$numberLottery');
      final data = response.data;

      return MegaSenaModel.fromJson(data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('${e.response?.statusCode}');
      } else {
        throw Exception('${e.message}');
      }
    }
  }
}
