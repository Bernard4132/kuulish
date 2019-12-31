json.extract! blog, :id, :title, :bodydescrip, :body, :blogimage, :group_id, :user_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
