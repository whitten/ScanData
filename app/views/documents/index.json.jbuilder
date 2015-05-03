json.array!(@documents) do |document|
  json.extract! document, :id, :file_type, :digest, :created, :size, :folder
  json.url document_url(document, format: :json)
end
