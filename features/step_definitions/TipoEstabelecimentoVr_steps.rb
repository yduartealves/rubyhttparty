# encoding: utf-8
# language: pt

require 'httparty'
require 'json'
require 'rspec'

Dado("o endereço a API para consultar os tipos de estabelecimentos") do
  $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
end

Quando("realizar uma requisição para consultar os tipos de estabelecimentos") do
  $response = HTTParty.get($uri_base);
end

Então("a API irá retornar os dados do cadastro de tipos de estabeleciemntos respondendo o código 200 e imprimir aleatoriamente um desses tipos") do
  #expect do Status code e message
  expect($response.code).to eq(200)
  puts "Response Code #{$response.code}"
  expect($response.message).to eq("OK")

  $parsed_response = JSON.parse($response.body)

  # Obtém a matriz de respostas da chave "typeOfEstablishment"
  $type_of_establishments = $parsed_response["typeOfEstablishment"].map { |item| item }

  # Seleciona um elemento aleatório da matriz
  $random_response = $type_of_establishments.sample

  # Imprime a resposta aleatória de um tipo de estabelecimento
  puts "typeOfEstablishment: #{$random_response}"

end