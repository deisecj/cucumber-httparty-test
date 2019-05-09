require 'sinatra'
require "sinatra/json"
require_relative './logradouros'

set :show_exceptions, false

  get '/logradouros/:cep' do
   json Logradouros.buscar_cep(params[:cep])
  end

error CepInvalidoError do |e|
    status 400
    json erro: e.message
end

error LogradouroNaoEncontradoError do
  status 200
  json erro: true
end