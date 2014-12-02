require_dependency 'version_model_updates'
require_dependency 'project_model_updates'

Redmine::Plugin.register :redmine_hide_versions do
  name 'Hide Versions plugin'
  author 'Eric Schank'
  description 'This Redmine plugin allows you to hide specific "versions" from reports and menus.'
  version '0.0.1'
  url 'https://github.com/EricSchank/redmine_hide_versions'
  author_url 'https://github.com/EricSchank'
end

