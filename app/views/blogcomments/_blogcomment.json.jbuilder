json.extract! blogcomment, :id, :body, :bolg_id, :created_at, :updated_at
json.url blogcomment_url(blogcomment, format: :json)
