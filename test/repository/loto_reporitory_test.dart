import 'package:dio/dio.dart';
import 'package:flutter_loto_check/model/mega_sena_model.dart';
import 'package:flutter_loto_check/repository/loto_reporitory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('Lottery repository', () {
    late MockDio dio;
    late LotteryRepository repository;
    final response = Response(
      statusCode: 200,
      data: jsonMock,
      requestOptions: RequestOptions(path: '/'),
    );

    setUp(() {
      dio = MockDio();
      repository = LotteryRepository(dio: dio);

      when(() => dio.get(any())).thenAnswer((_) async => response);
    });

    group('fetchLottery', () {
      const int expectednumberLottery = 2555;
      const String expectedDataApuracao = "14/01/2023";
      const List<String> expectedListaDezenas = [
        "03",
        "20",
        "45",
        "52",
        "53",
        "58"
      ];

      test('should return MegaSenaModel on success with correct data',
          () async {
        final loto =
            await repository.fetchLottery(numberLottery: expectednumberLottery);

        expect(loto, isInstanceOf<ModelMegaSena>());
        expect(loto.dezenas, expectedDataApuracao);
        expect(loto.dezenas, expectedListaDezenas);
      });
    });
  });
}

final jsonMock = {
  "loteria": "megasena",
  "concurso": 2555,
  "data": "14/01/2023",
  "local": "ESPAÇO DA SORTE em SÃO PAULO, SP",
  "dezenasOrdemSorteio": ["45", "58", "03", "20", "52", "53"],
  "dezenas": ["03", "20", "45", "52", "53", "58"],
  "trevos": [],
  "timeCoracao": "",
  "mesSorte": "",
  "premiacoes": [
    {"descricao": "6 acertos", "faixa": 1, "ganhadores": 0, "valorPremio": 0.0},
    {
      "descricao": "5 acertos",
      "faixa": 2,
      "ganhadores": 58,
      "valorPremio": 65428.68
    },
    {
      "descricao": "4 acertos",
      "faixa": 3,
      "ganhadores": 4595,
      "valorPremio": 1179.81
    }
  ],
  "estadosPremiados": [],
  "observacao": "",
  "acumulou": true,
  "proximoConcurso": 2556,
  "dataProximoConcurso": "18/01/2023",
  "localGanhadores": [],
  "valorArrecadado": 6.5819628E7,
  "valorAcumuladoConcurso_0_5": 4394052.55,
  "valorAcumuladoConcursoEspecial": 3343555.24,
  "valorAcumuladoProximoConcurso": 3.372247608E7,
  "valorEstimadoProximoConcurso": 4.2E7
};
