#language: pt

@authors
Funcionalidade: Authors
    validar operações da API Authors

    @get_authors
    Cenário: Validar GET API Authors
        Quando faço uma requisição GET para o serviço Authors
        Então o serviço Authors deve responder com 200
        E retorna a lista de autores

    @get_author 
    Cenário: Validar GET API Authors com id
        Quando faço uma requisição GET para o serviço Authors passando id 
        Então o serviço Authors deve responder com 200
        E retorna o autor

    @get_authors_idBook 
    Cenário: Validar GET API Authors com idBook
        Quando faço uma requisição GET para o serviço Authors passando idBook 
        Então o serviço Authors deve responder com 200
        E retorna a lista de autores pelo idBook

    @post_authors
    Cenário: Validar POST API Authors
        Quando faço uma requisição POST para o serviço Authors 
        Então o serviço Authors deve responder com 200
        E retorna o autor criado