class ConsultarDadosCep
    include HTTParty
    base_uri "https://viacep.com.br/ws"
    format :json
    headers 'Content-Type' => 'application/json; charset=UTF-8'

    def consultar_cep_valido(cep_valido)
        self.class.get("/#{cep_valido}/json/")
    end

    def consultar_cep_invalido(cep_invalido)
        self.class.get("/#{cep_invalido}/json/")
    end
end    