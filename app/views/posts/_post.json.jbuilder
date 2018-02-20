json.extract! post, :id, :title, :subtitle, :body, :meta_description, :header_image, :header_alt, :created_at, :updated_at
json.url post_url(post, format: :json)
