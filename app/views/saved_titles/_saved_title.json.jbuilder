json.extract! saved_title, :id, :title, :description, :image_url, :created_at, :updated_at
json.url saved_title_url(saved_title, format: :json)
