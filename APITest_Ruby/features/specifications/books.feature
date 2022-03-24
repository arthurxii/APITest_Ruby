#language: pt

@books
Funcionalidade: Books
    validar operações da API Books

    @get_books
    Cenário: Validar GET API Books
        Quando faço uma requisição GET para o serviço Books
        Então o serviço Books deve responder com 200
        E retorna a lista de livros

    @get_book
    Cenário: Validar GET API Books com id
        Quando faço uma requisição GET para o serviço Books passando id 
        Então o serviço Books deve responder com 200
        E retorna o livro

    @post_books
    Cenário: Validar POST API Books
        Quando faço uma requisição POST para o serviço Books 
        Então o serviço Books deve responder com 200
        E retorna o livro criado