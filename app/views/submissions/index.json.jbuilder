json.array!(@submissions) do |submission|
  json.extract! submission, :id, :name, :file_type, :hash, :imageError, :size, :height, :width, :page, :modified, :folder, :user_id, :submission_id
  json.url submission_url(submission, format: :json)
end
