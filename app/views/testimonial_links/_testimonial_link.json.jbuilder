json.extract! testimonial_link, :id, :link_url, :user_id, :created_at, :updated_at
json.url testimonial_link_url(testimonial_link, format: :json)
