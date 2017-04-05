json.extract! videolink, :id, :link, :User_id, :created_at, :updated_at
json.url videolink_url(videolink, format: :json)
