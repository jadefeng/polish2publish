json.array!(@projects) do |project|
  json.extract! project, :id, :title, :category_id, :genre_id, :state, :photo, :url, :editor_id, :author_id, :page_no, :word_count
  json.url project_url(project, format: :json)
end
