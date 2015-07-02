json.array!(@courses) do |course|
  json.extract! course, :id, :course_name, :cq1, :cq2, :cq3, :cq4, :gq1, :gq2, :gq3, :gq4, :gq5, :gq6, :gq7
  json.url course_url(course, format: :json)
end
