require_dependency 'redmine_activity_fetcher_patch'

Redmine::Plugin.register :redmine_default_activities do
  # placeholder to keep the hash from being removed
  settings :default => {'default_event_types' => "", :dummy_setting => ""}, :partial => 'settings/default_activities_settings'
  
  name 'Redmine Default Activities plugin'
  author 'David S Anderson'
  description 'Allows selecting the default events to show in the activity view from the plugin settings'
  version '0.0.1'
  url 'https://github.com/ande3577/redmine_default_activities'
  author_url 'https://github.com/ande3577'
end
