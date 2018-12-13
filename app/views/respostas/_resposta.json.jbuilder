json.extract! resposta, :id, :resposta, :pergunta_id, :created_at, :updated_at
json.url resposta_url(resposta, format: :json)
