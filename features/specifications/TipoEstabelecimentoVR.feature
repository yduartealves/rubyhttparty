#language: pt

  Funcionalidade: Consultar Tipos de Estabelecimentos via API
    Como usuário do sistema da VR pretendo consultar os tipos de estabelicimentos
    através da requisição de API neste teste de BackEnd.

  Cenario: Consultar um tipo de estabelecimento
    Dado o endereço a API para consultar os tipos de estabelecimentos
    Quando realizar uma requisição para consultar os tipos de estabelecimentos
    Então a API irá retornar os dados do cadastro de tipos de estabeleciemntos respondendo o código 200 e imprimir aleatoriamente um desses tipos