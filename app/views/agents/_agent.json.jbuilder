json.extract! agent, :id, :full_name, :logged, :call_status, :created_at, :updated_at
json.url agent_url(agent, format: :json)