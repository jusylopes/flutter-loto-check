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
      const int expectednumberLottery = 2657;
      const String expectedDataApuracao = "18/11/2023";
      const List<String> expectedListaDezenas = [
        "07",
        "27",
        "32",
        "33",
        "36",
        "53",
      ];

      test('should return MegaSenaModel on success with correct data',
          () async {
        final loto =
            await repository.fetchLottery(numberLottery: expectednumberLottery);

        expect(loto, isInstanceOf<MegaSenaModel>());
        expect(loto.dataApuracao, expectedDataApuracao);
        expect(loto.listaDezenas, expectedListaDezenas);
      });
    });
  });
}

final jsonMock = {
  "acumulado": true,
  "dataApuracao": "18/11/2023",
  "dataProximoConcurso": "21/11/2023",
  "dezenasSorteadasOrdemSorteio": ["07", "53", "33", "36", "32", "27"],
  "exibirDetalhamentoPorCidade": true,
  "id": null,
  "indicadorConcursoEspecial": 1,
  "listaDezenas": ["07", "27", "32", "33", "36", "53"],
  "listaDezenasSegundoSorteio": null,
  "listaMunicipioUFGanhadores": [],
  "listaRateioPremio": [
    {
      "descricaoFaixa": "6 acertos",
      "faixa": 1,
      "numeroDeGanhadores": 0,
      "valorPremio": 0.0
    },
    {
      "descricaoFaixa": "5 acertos",
      "faixa": 2,
      "numeroDeGanhadores": 76,
      "valorPremio": 62551.38
    },
    {
      "descricaoFaixa": "4 acertos",
      "faixa": 3,
      "numeroDeGanhadores": 7214,
      "valorPremio": 941.4
    }
  ],
  "listaResultadoEquipeEsportiva": null,
  "localSorteio": "ESPAÇO DA SORTE",
  "nomeMunicipioUFSorteio": "SÃO PAULO, SP",
  "nomeTimeCoracaoMesSorte":
      "\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000",
  "numero": 2657,
  "numeroConcursoAnterior": 2656,
  "numeroConcursoFinal_0_5": 2660,
  "numeroConcursoProximo": 2658,
  "numeroJogo": 2,
  "observacao": "",
  "premiacaoContingencia": null,
  "tipoJogo": "MEGA_SENA",
  "tipoPublicacao": 3,
  "ultimoConcurso": true,
  "valorArrecadado": 82453625.0,
  "valorAcumuladoConcurso_0_5": 12689034.66,
  "valorAcumuladoConcursoEspecial": 101765908.19,
  "valorAcumuladoProximoConcurso": 44352302.43,
  "valorEstimadoProximoConcurso": 51000000.0,
  "valorSaldoReservaGarantidora": 0.0,
  "valorTotalPremioFaixaUm": 0.0
};
