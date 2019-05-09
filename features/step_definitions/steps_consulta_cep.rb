
Dado("que tenho a API para consultar dados do logradouro por CEP") do
  @api = ConsultaCep.new
end

Quando("faço uma requisição com CEP {string}") do |cep|
  @response = @api.consulta_cep(cep)
end

Quando("faço uma requisição com CEP vazio") do
  @response = @api.consulta_cep("")
end

Então("A API retorna com sucesso o código do IBGE {string} e printa no stdout") do |codigo_ibge_esperado|
  codigo_ibge = @response.parsed_response["ibge"]
  expect(codigo_ibge).to eql(codigo_ibge_esperado)
  puts "IBGE code is: #{codigo_ibge}"
end

Então("A API retorna erro de bad request") do
  expect(@response.code).to eq(400)
end