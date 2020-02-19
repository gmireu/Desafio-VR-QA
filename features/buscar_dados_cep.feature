# encoding: utf-8
# language: pt

@buscar_dados_cep
Funcionalidade: Consultar os dados de um endereço a partir de um CEP
  Como um analista
  Desejo utilizar o numero de um CEP
  Para consultar os dados de um endereço

@cep_valido
Esquema do Cenario: Consulta dos dados de um endereco com sucesso
  Dado que eu requisite via servico os dados de endereco de um cep valido <cep_valido>
  Então o servico deve retornar os dados de endereco com sucesso

Exemplos:
|cep_valido|
|'65080640'|
|'65636852'|  
|'56332345'|


@cep_invalido
Esquema do Cenario: Consultar dados de um endereco com um CEP invalido
  Dado que eu requisite via servico os dados de endereco de um cep invalido <cep_invalido>
  Então o servico deve retornar uma mensagem de CEP invalido    

Exemplos:
 |cep_invalido|
 |'00000000'  |
 |'11111111'  |  
 |'22222222'  |
