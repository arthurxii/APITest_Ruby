#language: pt

@coverphotos
Funcionalidade: CoverPhotos
    validar operações da API CoverPhotos

    @get_coverphotos
    Cenário: Validar GET API CoverPhotos
        Quando faço uma requisição GET para o serviço CoverPhotos
        Então o serviço CoverPhotos deve responder com 200
        E retorna a lista de fotos

    @get_coverphoto
    Cenário: Validar GET API CoverPhotos com id
        Quando faço uma requisição GET para o serviço CoverPhotos passando id 
        Então o serviço CoverPhotos deve responder com 200
        E retorna a foto

    @get_coverphotos_idBook 
    Cenário: Validar GET API CoverPhotos com idBook
        Quando faço uma requisição GET para o serviço CoverPhotos passando idBook 
        Então o serviço CoverPhotos deve responder com 200
        E retorna a lista de cover photos pelo idBook

    @post_coverphotos
    Cenário: Validar POST API CoverPhotos
        Quando faço uma requisição POST para o serviço CoverPhotos
        Então o serviço CoverPhotos deve responder com 200
        E retorna o cover photo criado