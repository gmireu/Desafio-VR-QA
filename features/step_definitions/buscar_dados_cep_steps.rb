Dado("que eu requisite via servico os dados de endereco de um cep valido {string}") do |cep_valido|
    consultar = ConsultarDadosCep.new
    @response = consultar.consultar_cep_valido(cep_valido)
end
  
Então("o servico deve retornar os dados de endereco com sucesso") do
    expect(@response.code). to eq 200
    expect(@response.parsed_response['cep']).not_to be_nil
    $stdout.print "IBGE=#{@response.parsed_response['ibge']}"
end
  
Dado("que eu requisite via servico os dados de endereco de um cep invalido {string}") do |cep_invalido|
    consultar = ConsultarDadosCep.new
    @response = consultar.consultar_cep_invalido(cep_invalido)
end
  
Então("o servico deve retornar uma mensagem de CEP invalido") do
    expect(@response.code). to eq 200
    expect(@response.parsed_response['erro']). to eq true 
end