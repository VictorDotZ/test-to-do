require 'yaml'

template = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../seeds.yml', __FILE__))))["projects"]

template.each do |project|
  created_project = Project.create!(title: project["title"])
  created_project.todos.create!(project["todos"])
end
