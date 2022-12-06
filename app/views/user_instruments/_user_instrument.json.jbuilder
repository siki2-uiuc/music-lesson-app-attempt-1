json.extract! user_instrument, :id, :own_level_id, :min_teaching_level_id, :max_teaching_level_id, :instrument_id, :musician_id, :years_played, :created_at, :updated_at
json.url user_instrument_url(user_instrument, format: :json)
