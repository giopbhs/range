json.extract! gallery, :id, :range_start, :range_end, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)