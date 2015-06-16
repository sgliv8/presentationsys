json.array!(@comments) do |comment|
  json.extract! comment, :id, :group, :project, :strength, :weakness, :improvement, :fund, :user_id
  json.url comment_url(comment, format: :json)
end
