json.extract! project, :id, :title, :description, :location, :project_date, :deadline, :image, :created_at, :updated_at
json.url project_url(project, format: :json)
