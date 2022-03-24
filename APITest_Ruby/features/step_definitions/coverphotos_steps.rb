Quando('faço uma requisição GET para o serviço CoverPhotos') do
    @request_coverphotos = coverphotos.get_coverphotos
  end
  
  Então('o serviço CoverPhotos deve responder com {int}') do |status_code|
    expect(@request_coverphotos.code).to eq status_code
  end
  
  Então('retorna a lista de fotos') do
    expect(@request_coverphotos.message).not_to be_empty
  end

  Quando('faço uma requisição GET para o serviço CoverPhotos passando id') do
    @id= sort_id.to_i
    @request_coverphotos = coverphotos.get_coverphoto(@id)
end

Então('retorna a foto') do
    expect(@request_coverphotos.parsed_response['id']).to eql @id
    print @id 
end

Quando('faço uma requisição GET para o serviço CoverPhotos passando idBook') do
    @idBook= sort_id.to_i
    @request_coverphotos = coverphotos.get_coverphotos_idBook(@idBook)
  end
  
  Então('retorna a lista de cover photos pelo idBook') do
    expect(@request_coverphotos.first["idBook"]).to eql @idBook
    print @idBook
  end

  Quando('faço uma requisição POST para o serviço CoverPhotos') do
    @payload_coverphotos = build(:coverphotos).coverphotos_hash
    @request_coverphotos = coverphotos.post_coverphotos(@payload_coverphotos)
  end
  
  Então('retorna o cover photo criado') do
    expect(@request_coverphotos['id']).to eql @payload_coverphotos[:id]
    expect(@request_coverphotos['idBook']).to eql @payload_coverphotos[:idBook]
    expect(@request_coverphotos['url']).to eql @payload_coverphotos[:url]
  end