class ConsultaCep
  include HTTParty

  base_uri "http://localhost:4567/logradouros/"

  def consulta_cep(cep)
    cep = "/#{cep}" unless cep.empty?
    self.class.get("#{cep}")
  end

end