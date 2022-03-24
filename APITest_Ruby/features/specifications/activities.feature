#language: pt

@activities
Funcionalidade: Activities
    validar operações da API Activities

    @get_activities
    Cenário: Validar GET API Activities
        Quando faço uma requisição GET para o serviço Activities
        Então o serviço Activities deve responder com 200
        E retorna a lista de atividades

    @get_activity
    Cenário: Validar GET API Activities com id
        Quando faço uma requisição GET para o serviço Activities passando id 
        Então o serviço Activities deve responder com 200
        E retorna a atividade

    @post_activities
    Cenário: Validar POST API Activities
        Quando faço uma requisição POST para o serviço Activities 
        Então o serviço Activities deve responder com 200
        E retorna a atividade criada