Quando('faço uma requisição GET para o serviço Books') do
    @request_books = books.get_books
  end
  
  Então('o serviço Books deve responder com {int}') do |status_code|
    expect(@request_books.code).to eq status_code
  end
  
  Então('retorna a lista de livros') do
    expect(@request_books.message).not_to be_empty
  end

  Quando('faço uma requisição GET para o serviço Books passando id') do
    @id= sort_id.to_i
    @request_books = books.get_book(@id)
  end
  
  Então('retorna o livro') do
    expect(@request_books.parsed_response['id']).to eql @id
    print @id 
  end

  Quando('faço uma requisição POST para o serviço Books') do
    @payload_books = build(:book).book_hash
    @request_books = books.post_books(@payload_books)
  end
  
  Então('retorna o livro criado') do
    expect(@request_books['id']).to eql @payload_books[:id]
    expect(@request_books['title']).to eql @payload_books[:title]
    expect(@request_books['description']).to eql @payload_books[:description]
    expect(@request_books['pageCount'].to_i).to eql @payload_books[:pageCount]
    expect(@request_books['excerpt']).to eql @payload_books[:excerpt]
    expect(@request_books['publishDate']).to eql @payload_books[:publishDate]
  end