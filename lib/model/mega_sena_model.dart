import 'dart:convert';

MegaSenaModel modelMegaSenaFromJson(String str) =>
    MegaSenaModel.fromJson(json.decode(str));

String modelMegaSenaToJson(MegaSenaModel data) => json.encode(data.toJson());

class MegaSenaModel {
  final bool acumulado;
  final String dataApuracao;
  final String dataProximoConcurso;
  final List<String> dezenasSorteadasOrdemSorteio;
  final bool exibirDetalhamentoPorCidade;
  final dynamic id;
  final int indicadorConcursoEspecial;
  final List<String> listaDezenas;
  final dynamic listaDezenasSegundoSorteio;
  final List<dynamic> listaMunicipioUfGanhadores;
  final List<ListaRateioPremio> listaRateioPremio;
  final dynamic listaResultadoEquipeEsportiva;
  final String localSorteio;
  final String nomeMunicipioUfSorteio;
  final String nomeTimeCoracaoMesSorte;
  final int numero;
  final int numeroConcursoAnterior;
  final int numeroConcursoFinal05;
  final int numeroConcursoProximo;
  final int numeroJogo;
  final String observacao;
  final dynamic premiacaoContingencia;
  final String tipoJogo;
  final int tipoPublicacao;
  final bool ultimoConcurso;
  final double valorArrecadado;
  final double valorAcumuladoConcurso05;
  final double valorAcumuladoConcursoEspecial;
  final double valorAcumuladoProximoConcurso;
  final double valorEstimadoProximoConcurso;
  final double valorSaldoReservaGarantidora;
  final double valorTotalPremioFaixaUm;

  MegaSenaModel({
    required this.acumulado,
    required this.dataApuracao,
    required this.dataProximoConcurso,
    required this.dezenasSorteadasOrdemSorteio,
    required this.exibirDetalhamentoPorCidade,
    required this.id,
    required this.indicadorConcursoEspecial,
    required this.listaDezenas,
    required this.listaDezenasSegundoSorteio,
    required this.listaMunicipioUfGanhadores,
    required this.listaRateioPremio,
    required this.listaResultadoEquipeEsportiva,
    required this.localSorteio,
    required this.nomeMunicipioUfSorteio,
    required this.nomeTimeCoracaoMesSorte,
    required this.numero,
    required this.numeroConcursoAnterior,
    required this.numeroConcursoFinal05,
    required this.numeroConcursoProximo,
    required this.numeroJogo,
    required this.observacao,
    required this.premiacaoContingencia,
    required this.tipoJogo,
    required this.tipoPublicacao,
    required this.ultimoConcurso,
    required this.valorArrecadado,
    required this.valorAcumuladoConcurso05,
    required this.valorAcumuladoConcursoEspecial,
    required this.valorAcumuladoProximoConcurso,
    required this.valorEstimadoProximoConcurso,
    required this.valorSaldoReservaGarantidora,
    required this.valorTotalPremioFaixaUm,
  });

  MegaSenaModel copyWith({
    bool? acumulado,
    String? dataApuracao,
    String? dataProximoConcurso,
    List<String>? dezenasSorteadasOrdemSorteio,
    bool? exibirDetalhamentoPorCidade,
    dynamic id,
    int? indicadorConcursoEspecial,
    List<String>? listaDezenas,
    dynamic listaDezenasSegundoSorteio,
    List<dynamic>? listaMunicipioUfGanhadores,
    List<ListaRateioPremio>? listaRateioPremio,
    dynamic listaResultadoEquipeEsportiva,
    String? localSorteio,
    String? nomeMunicipioUfSorteio,
    String? nomeTimeCoracaoMesSorte,
    int? numero,
    int? numeroConcursoAnterior,
    int? numeroConcursoFinal05,
    int? numeroConcursoProximo,
    int? numeroJogo,
    String? observacao,
    dynamic premiacaoContingencia,
    String? tipoJogo,
    int? tipoPublicacao,
    bool? ultimoConcurso,
    double? valorArrecadado,
    double? valorAcumuladoConcurso05,
    double? valorAcumuladoConcursoEspecial,
    double? valorAcumuladoProximoConcurso,
    double? valorEstimadoProximoConcurso,
    double? valorSaldoReservaGarantidora,
    double? valorTotalPremioFaixaUm,
  }) =>
      MegaSenaModel(
        acumulado: acumulado ?? this.acumulado,
        dataApuracao: dataApuracao ?? this.dataApuracao,
        dataProximoConcurso: dataProximoConcurso ?? this.dataProximoConcurso,
        dezenasSorteadasOrdemSorteio:
            dezenasSorteadasOrdemSorteio ?? this.dezenasSorteadasOrdemSorteio,
        exibirDetalhamentoPorCidade:
            exibirDetalhamentoPorCidade ?? this.exibirDetalhamentoPorCidade,
        id: id ?? this.id,
        indicadorConcursoEspecial:
            indicadorConcursoEspecial ?? this.indicadorConcursoEspecial,
        listaDezenas: listaDezenas ?? this.listaDezenas,
        listaDezenasSegundoSorteio:
            listaDezenasSegundoSorteio ?? this.listaDezenasSegundoSorteio,
        listaMunicipioUfGanhadores:
            listaMunicipioUfGanhadores ?? this.listaMunicipioUfGanhadores,
        listaRateioPremio: listaRateioPremio ?? this.listaRateioPremio,
        listaResultadoEquipeEsportiva:
            listaResultadoEquipeEsportiva ?? this.listaResultadoEquipeEsportiva,
        localSorteio: localSorteio ?? this.localSorteio,
        nomeMunicipioUfSorteio:
            nomeMunicipioUfSorteio ?? this.nomeMunicipioUfSorteio,
        nomeTimeCoracaoMesSorte:
            nomeTimeCoracaoMesSorte ?? this.nomeTimeCoracaoMesSorte,
        numero: numero ?? this.numero,
        numeroConcursoAnterior:
            numeroConcursoAnterior ?? this.numeroConcursoAnterior,
        numeroConcursoFinal05:
            numeroConcursoFinal05 ?? this.numeroConcursoFinal05,
        numeroConcursoProximo:
            numeroConcursoProximo ?? this.numeroConcursoProximo,
        numeroJogo: numeroJogo ?? this.numeroJogo,
        observacao: observacao ?? this.observacao,
        premiacaoContingencia:
            premiacaoContingencia ?? this.premiacaoContingencia,
        tipoJogo: tipoJogo ?? this.tipoJogo,
        tipoPublicacao: tipoPublicacao ?? this.tipoPublicacao,
        ultimoConcurso: ultimoConcurso ?? this.ultimoConcurso,
        valorArrecadado: valorArrecadado ?? this.valorArrecadado,
        valorAcumuladoConcurso05:
            valorAcumuladoConcurso05 ?? this.valorAcumuladoConcurso05,
        valorAcumuladoConcursoEspecial: valorAcumuladoConcursoEspecial ??
            this.valorAcumuladoConcursoEspecial,
        valorAcumuladoProximoConcurso:
            valorAcumuladoProximoConcurso ?? this.valorAcumuladoProximoConcurso,
        valorEstimadoProximoConcurso:
            valorEstimadoProximoConcurso ?? this.valorEstimadoProximoConcurso,
        valorSaldoReservaGarantidora:
            valorSaldoReservaGarantidora ?? this.valorSaldoReservaGarantidora,
        valorTotalPremioFaixaUm:
            valorTotalPremioFaixaUm ?? this.valorTotalPremioFaixaUm,
      );

  factory MegaSenaModel.fromJson(Map<String, dynamic> json) => MegaSenaModel(
        acumulado: json["acumulado"],
        dataApuracao: json["dataApuracao"],
        dataProximoConcurso: json["dataProximoConcurso"],
        dezenasSorteadasOrdemSorteio: List<String>.from(
            json["dezenasSorteadasOrdemSorteio"].map((x) => x)),
        exibirDetalhamentoPorCidade: json["exibirDetalhamentoPorCidade"],
        id: json["id"],
        indicadorConcursoEspecial: json["indicadorConcursoEspecial"],
        listaDezenas: List<String>.from(json["listaDezenas"].map((x) => x)),
        listaDezenasSegundoSorteio: json["listaDezenasSegundoSorteio"],
        listaMunicipioUfGanhadores: List<dynamic>.from(
            json["listaMunicipioUFGanhadores"].map((x) => x)),
        listaRateioPremio: List<ListaRateioPremio>.from(
            json["listaRateioPremio"]
                .map((x) => ListaRateioPremio.fromJson(x))),
        listaResultadoEquipeEsportiva: json["listaResultadoEquipeEsportiva"],
        localSorteio: json["localSorteio"],
        nomeMunicipioUfSorteio: json["nomeMunicipioUFSorteio"],
        nomeTimeCoracaoMesSorte: json["nomeTimeCoracaoMesSorte"],
        numero: json["numero"],
        numeroConcursoAnterior: json["numeroConcursoAnterior"],
        numeroConcursoFinal05: json["numeroConcursoFinal_0_5"],
        numeroConcursoProximo: json["numeroConcursoProximo"],
        numeroJogo: json["numeroJogo"],
        observacao: json["observacao"],
        premiacaoContingencia: json["premiacaoContingencia"],
        tipoJogo: json["tipoJogo"],
        tipoPublicacao: json["tipoPublicacao"],
        ultimoConcurso: json["ultimoConcurso"],
        valorArrecadado: json["valorArrecadado"],
        valorAcumuladoConcurso05:
            json["valorAcumuladoConcurso_0_5"]?.toDouble(),
        valorAcumuladoConcursoEspecial:
            json["valorAcumuladoConcursoEspecial"]?.toDouble(),
        valorAcumuladoProximoConcurso:
            json["valorAcumuladoProximoConcurso"]?.toDouble(),
        valorEstimadoProximoConcurso: json["valorEstimadoProximoConcurso"],
        valorSaldoReservaGarantidora: json["valorSaldoReservaGarantidora"],
        valorTotalPremioFaixaUm: json["valorTotalPremioFaixaUm"],
      );

  Map<String, dynamic> toJson() => {
        "acumulado": acumulado,
        "dataApuracao": dataApuracao,
        "dataProximoConcurso": dataProximoConcurso,
        "dezenasSorteadasOrdemSorteio":
            List<dynamic>.from(dezenasSorteadasOrdemSorteio.map((x) => x)),
        "exibirDetalhamentoPorCidade": exibirDetalhamentoPorCidade,
        "id": id,
        "indicadorConcursoEspecial": indicadorConcursoEspecial,
        "listaDezenas": List<dynamic>.from(listaDezenas.map((x) => x)),
        "listaDezenasSegundoSorteio": listaDezenasSegundoSorteio,
        "listaMunicipioUFGanhadores":
            List<dynamic>.from(listaMunicipioUfGanhadores.map((x) => x)),
        "listaRateioPremio":
            List<dynamic>.from(listaRateioPremio.map((x) => x.toJson())),
        "listaResultadoEquipeEsportiva": listaResultadoEquipeEsportiva,
        "localSorteio": localSorteio,
        "nomeMunicipioUFSorteio": nomeMunicipioUfSorteio,
        "nomeTimeCoracaoMesSorte": nomeTimeCoracaoMesSorte,
        "numero": numero,
        "numeroConcursoAnterior": numeroConcursoAnterior,
        "numeroConcursoFinal_0_5": numeroConcursoFinal05,
        "numeroConcursoProximo": numeroConcursoProximo,
        "numeroJogo": numeroJogo,
        "observacao": observacao,
        "premiacaoContingencia": premiacaoContingencia,
        "tipoJogo": tipoJogo,
        "tipoPublicacao": tipoPublicacao,
        "ultimoConcurso": ultimoConcurso,
        "valorArrecadado": valorArrecadado,
        "valorAcumuladoConcurso_0_5": valorAcumuladoConcurso05,
        "valorAcumuladoConcursoEspecial": valorAcumuladoConcursoEspecial,
        "valorAcumuladoProximoConcurso": valorAcumuladoProximoConcurso,
        "valorEstimadoProximoConcurso": valorEstimadoProximoConcurso,
        "valorSaldoReservaGarantidora": valorSaldoReservaGarantidora,
        "valorTotalPremioFaixaUm": valorTotalPremioFaixaUm,
      };
}

class ListaRateioPremio {
  final String descricaoFaixa;
  final int faixa;
  final int numeroDeGanhadores;
  final double valorPremio;

  ListaRateioPremio({
    required this.descricaoFaixa,
    required this.faixa,
    required this.numeroDeGanhadores,
    required this.valorPremio,
  });

  ListaRateioPremio copyWith({
    String? descricaoFaixa,
    int? faixa,
    int? numeroDeGanhadores,
    double? valorPremio,
  }) =>
      ListaRateioPremio(
        descricaoFaixa: descricaoFaixa ?? this.descricaoFaixa,
        faixa: faixa ?? this.faixa,
        numeroDeGanhadores: numeroDeGanhadores ?? this.numeroDeGanhadores,
        valorPremio: valorPremio ?? this.valorPremio,
      );

  factory ListaRateioPremio.fromJson(Map<String, dynamic> json) =>
      ListaRateioPremio(
        descricaoFaixa: json["descricaoFaixa"],
        faixa: json["faixa"],
        numeroDeGanhadores: json["numeroDeGanhadores"],
        valorPremio: json["valorPremio"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "descricaoFaixa": descricaoFaixa,
        "faixa": faixa,
        "numeroDeGanhadores": numeroDeGanhadores,
        "valorPremio": valorPremio,
      };
}
