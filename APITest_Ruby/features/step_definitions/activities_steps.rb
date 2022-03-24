Quando('faço uma requisição GET para o serviço Activities') do
    @request_activities = activities.get_activities
  end
  
  Então('o serviço Activities deve responder com {int}') do |status_code|
    expect(@request_activities.code).to eq status_code
  end
  
  Então('retorna a lista de atividades') do
    expect(@request_activities.message).not_to be_empty
  end

  Quando('faço uma requisição GET para o serviço Activities passando id') do
    @id= sort_id.to_i
    @request_activities = activities.get_activity(@id)
  end
  
  Então('retorna a atividade') do
    expect(@request_activities.parsed_response['id']).to eql @id
    print @id 
  end

  Quando('faço uma requisição POST para o serviço Activities') do
    @payload_activities = build(:activity).activity_hash
    @request_activities = activities.post_activities(@payload_activities)
  end
  
  Então('retorna a atividade criada') do
    expect(@request_activities['id']).to eql @payload_activities[:id]
    expect(@request_activities['title']).to eql @payload_activities[:title]
    expect(@request_activities['dueDate']).to eql @payload_activities[:dueDate]
    expect(@request_activities['completed']).to eql @payload_activities[:completed]
  end