json.array!(@courses) do |course|
  json.extract! course, :id, :course_name, :School_id
  json.url course_url(course, format: :json)
end
