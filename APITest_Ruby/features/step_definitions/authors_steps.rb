Quando('faço uma requisição GET para o serviço Authors') do
    @request_authors = authors.get_authors
  end
  
  Então('o serviço Authors deve responder com {int}') do |status_code|
    expect(@request_authors.code).to eq status_code
  end
  
  Então('retorna a lista de autores') do
    expect(@request_authors.message).not_to be_empty
  end

  Quando('faço uma requisição GET para o serviço Authors passando id') do
    @id= sort_id.to_i
    @request_authors = authors.get_author(@id)
  end
  
  Então('retorna o autor') do
    expect(@request_authors.parsed_response['id']).to eql @id
    print @id 
  end

  Quando('faço uma requisição GET para o serviço Authors passando idBook') do
    @idBook= sort_id.to_i
    @request_authors = authors.get_authors_idBook(@idBook)
  end
  
  Então('retorna a lista de autores pelo idBook') do
    expect(@request_authors.first["idBook"]).to eql @idBook
    print @idBook
  end

  Quando('faço uma requisição POST para o serviço Authors') do
    @payload_authors = build(:author).author_hash
    @request_authors = authors.post_authors(@payload_authors)
  end
  
  Então('retorna o autor criado') do
    expect(@request_authors['id']).to eql @payload_authors[:id]
    expect(@request_authors['idBook']).to eql @payload_authors[:idBook]
    expect(@request_authors['firstName']).to eql @payload_authors[:firstName]
    expect(@request_authors['lastName']).to eql @payload_authors[:lastName]
  end