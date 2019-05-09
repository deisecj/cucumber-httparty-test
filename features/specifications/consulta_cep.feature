#language: pt

Funcionalidade: Busca de logradouro por CEP

Cenário: Buscar logradouro informando CEP válido
  Dado que tenho a API para consultar dados do logradouro por CEP
  Quando faço uma requisição com CEP "41321705"
  Então A API retorna com sucesso o código do IBGE "2927408" e printa no stdout

Cenário: Buscar logradouro informando CEP inválido
  Dado que tenho a API para consultar dados do logradouro por CEP
  Quando faço uma requisição com CEP "123552423"
  Então A API retorna erro de bad request

Cenário: Buscar logradouro sem o CEP
  Dado que tenho a API para consultar dados do logradouro por CEP
  Quando faço uma requisição com CEP vazio
  Então A API retorna dado não encontrado


