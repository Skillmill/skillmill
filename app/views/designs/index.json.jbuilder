json.array!(@designs) do |design|
  json.extract! design, :id, :description, :image, :3partycontent, :project_id
  json.url design_url(design, format: :json)
end
