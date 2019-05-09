require_relative './errors'

class Logradouros

  DADOS = {
    '01153020': {
      cep: "01153-020",
      logradouro: "Rua Sousa Lima",
      complemento: "",
      bairro: "Barra Funda",
      localidade: "São Paulo",
      uf: "SP",
      unidade: "",
      ibge: "3550308",
      gia: "1004"
      },
      '41321705': {
        cep: "41321-705",
        logradouro: "Rua Soldado Antonio de Souza",
        complemento: "",
        bairro: "Castelo Branco",
        localidade: "Salvador",
        uf: "BA",
        unidade: "",
        ibge: "2927408",
        gia: ""
      }
  }

  def self.buscar_cep(cep)
    if cep.empty? || cep.length != 8
      raise CepInvalidoError, "CEP inválido"
    end

    logradouro = DADOS[cep.to_sym]
    if logradouro
      logradouro
    else
      raise LogradouroNaoEncontradoError, "Logradouro não encontrado para o cep=#{cep}"
    end
  end
end