import 'dart:convert' show json;

class ResultCep {
    String? cep;
    String? logradouro;
    String? complemento;
    String? bairro;
    String? localidade;
    String? uf;
    String? unidade;
    String? ibge;
    String? gia;

    ResultCep({
        this.cep,
        this.logradouro,
        this.complemento,
        this.bairro,
        this.localidade,
        this.uf,
        this.unidade,
        this.ibge,
        this.gia,
    });

    factory ResultCep.fromJson(String str) =>
        ResultCep.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());


    factory ResultCep.fromMap(Map<String, dynamic> json) => ResultCep(
        cep: json["cep"],
        logradouro: json["logradouro"],
        bairro: json["bairro"],
        localidade: json["localidade"],
        uf: json["uf"],
        );

    Map<String, dynamic> toMap() => {
        "cep": cep,
        "logradouro": logradouro,
        "bairro": bairro,
        "localidade": localidade,
        "uf": uf,
    };

}






