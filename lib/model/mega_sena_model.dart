import 'dart:convert';

ModelMegaSena modelMegaSenaFromJson(String str) => ModelMegaSena.fromJson(json.decode(str));

String modelMegaSenaToJson(ModelMegaSena data) => json.encode(data.toJson());

class ModelMegaSena {
    final String loteria;
    final int concurso;
    final String data;
    final String local;
    final List<String> dezenasOrdemSorteio;
    final List<String> dezenas;
    final List<dynamic> trevos;
    final String timeCoracao;
    final String mesSorte;
    final List<Premiacoe> premiacoes;
    final List<dynamic> estadosPremiados;
    final String observacao;
    final bool acumulou;
    final int proximoConcurso;
    final String dataProximoConcurso;
    final List<dynamic> localGanhadores;
    final double valorArrecadado;
    final double valorAcumuladoConcurso05;
    final double valorAcumuladoConcursoEspecial;
    final double valorAcumuladoProximoConcurso;
    final double valorEstimadoProximoConcurso;

    ModelMegaSena({
        required this.loteria,
        required this.concurso,
        required this.data,
        required this.local,
        required this.dezenasOrdemSorteio,
        required this.dezenas,
        required this.trevos,
        required this.timeCoracao,
        required this.mesSorte,
        required this.premiacoes,
        required this.estadosPremiados,
        required this.observacao,
        required this.acumulou,
        required this.proximoConcurso,
        required this.dataProximoConcurso,
        required this.localGanhadores,
        required this.valorArrecadado,
        required this.valorAcumuladoConcurso05,
        required this.valorAcumuladoConcursoEspecial,
        required this.valorAcumuladoProximoConcurso,
        required this.valorEstimadoProximoConcurso,
    });

    ModelMegaSena copyWith({
        String? loteria,
        int? concurso,
        String? data,
        String? local,
        List<String>? dezenasOrdemSorteio,
        List<String>? dezenas,
        List<dynamic>? trevos,
        String? timeCoracao,
        String? mesSorte,
        List<Premiacoe>? premiacoes,
        List<dynamic>? estadosPremiados,
        String? observacao,
        bool? acumulou,
        int? proximoConcurso,
        String? dataProximoConcurso,
        List<dynamic>? localGanhadores,
        double? valorArrecadado,
        double? valorAcumuladoConcurso05,
        double? valorAcumuladoConcursoEspecial,
        double? valorAcumuladoProximoConcurso,
        double? valorEstimadoProximoConcurso,
    }) => 
        ModelMegaSena(
            loteria: loteria ?? this.loteria,
            concurso: concurso ?? this.concurso,
            data: data ?? this.data,
            local: local ?? this.local,
            dezenasOrdemSorteio: dezenasOrdemSorteio ?? this.dezenasOrdemSorteio,
            dezenas: dezenas ?? this.dezenas,
            trevos: trevos ?? this.trevos,
            timeCoracao: timeCoracao ?? this.timeCoracao,
            mesSorte: mesSorte ?? this.mesSorte,
            premiacoes: premiacoes ?? this.premiacoes,
            estadosPremiados: estadosPremiados ?? this.estadosPremiados,
            observacao: observacao ?? this.observacao,
            acumulou: acumulou ?? this.acumulou,
            proximoConcurso: proximoConcurso ?? this.proximoConcurso,
            dataProximoConcurso: dataProximoConcurso ?? this.dataProximoConcurso,
            localGanhadores: localGanhadores ?? this.localGanhadores,
            valorArrecadado: valorArrecadado ?? this.valorArrecadado,
            valorAcumuladoConcurso05: valorAcumuladoConcurso05 ?? this.valorAcumuladoConcurso05,
            valorAcumuladoConcursoEspecial: valorAcumuladoConcursoEspecial ?? this.valorAcumuladoConcursoEspecial,
            valorAcumuladoProximoConcurso: valorAcumuladoProximoConcurso ?? this.valorAcumuladoProximoConcurso,
            valorEstimadoProximoConcurso: valorEstimadoProximoConcurso ?? this.valorEstimadoProximoConcurso,
        );

    factory ModelMegaSena.fromJson(Map<String, dynamic> json) => ModelMegaSena(
        loteria: json["loteria"],
        concurso: json["concurso"],
        data: json["data"],
        local: json["local"],
        dezenasOrdemSorteio: List<String>.from(json["dezenasOrdemSorteio"].map((x) => x)),
        dezenas: List<String>.from(json["dezenas"].map((x) => x)),
        trevos: List<dynamic>.from(json["trevos"].map((x) => x)),
        timeCoracao: json["timeCoracao"],
        mesSorte: json["mesSorte"],
        premiacoes: List<Premiacoe>.from(json["premiacoes"].map((x) => Premiacoe.fromJson(x))),
        estadosPremiados: List<dynamic>.from(json["estadosPremiados"].map((x) => x)),
        observacao: json["observacao"],
        acumulou: json["acumulou"],
        proximoConcurso: json["proximoConcurso"],
        dataProximoConcurso: json["dataProximoConcurso"],
        localGanhadores: List<dynamic>.from(json["localGanhadores"].map((x) => x)),
        valorArrecadado: json["valorArrecadado"],
        valorAcumuladoConcurso05: json["valorAcumuladoConcurso_0_5"]?.toDouble(),
        valorAcumuladoConcursoEspecial: json["valorAcumuladoConcursoEspecial"]?.toDouble(),
        valorAcumuladoProximoConcurso: json["valorAcumuladoProximoConcurso"]?.toDouble(),
        valorEstimadoProximoConcurso: json["valorEstimadoProximoConcurso"],
    );

    Map<String, dynamic> toJson() => {
        "loteria": loteria,
        "concurso": concurso,
        "data": data,
        "local": local,
        "dezenasOrdemSorteio": List<dynamic>.from(dezenasOrdemSorteio.map((x) => x)),
        "dezenas": List<dynamic>.from(dezenas.map((x) => x)),
        "trevos": List<dynamic>.from(trevos.map((x) => x)),
        "timeCoracao": timeCoracao,
        "mesSorte": mesSorte,
        "premiacoes": List<dynamic>.from(premiacoes.map((x) => x.toJson())),
        "estadosPremiados": List<dynamic>.from(estadosPremiados.map((x) => x)),
        "observacao": observacao,
        "acumulou": acumulou,
        "proximoConcurso": proximoConcurso,
        "dataProximoConcurso": dataProximoConcurso,
        "localGanhadores": List<dynamic>.from(localGanhadores.map((x) => x)),
        "valorArrecadado": valorArrecadado,
        "valorAcumuladoConcurso_0_5": valorAcumuladoConcurso05,
        "valorAcumuladoConcursoEspecial": valorAcumuladoConcursoEspecial,
        "valorAcumuladoProximoConcurso": valorAcumuladoProximoConcurso,
        "valorEstimadoProximoConcurso": valorEstimadoProximoConcurso,
    };
}

class Premiacoe {
    final String descricao;
    final int faixa;
    final int ganhadores;
    final double valorPremio;

    Premiacoe({
        required this.descricao,
        required this.faixa,
        required this.ganhadores,
        required this.valorPremio,
    });

    Premiacoe copyWith({
        String? descricao,
        int? faixa,
        int? ganhadores,
        double? valorPremio,
    }) => 
        Premiacoe(
            descricao: descricao ?? this.descricao,
            faixa: faixa ?? this.faixa,
            ganhadores: ganhadores ?? this.ganhadores,
            valorPremio: valorPremio ?? this.valorPremio,
        );

    factory Premiacoe.fromJson(Map<String, dynamic> json) => Premiacoe(
        descricao: json["descricao"],
        faixa: json["faixa"],
        ganhadores: json["ganhadores"],
        valorPremio: json["valorPremio"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "descricao": descricao,
        "faixa": faixa,
        "ganhadores": ganhadores,
        "valorPremio": valorPremio,
    };
}
