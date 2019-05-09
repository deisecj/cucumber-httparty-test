class ConsultaCep
  include HTTParty

  base_uri "https://viacep.com.br/ws/"

  def consulta_cep(cep)
    cep = "/#{cep}" unless cep.empty?
    self.class.get("#{cep}/json")
  end

end