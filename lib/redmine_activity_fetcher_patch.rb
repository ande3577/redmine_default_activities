module RedmineActivityFetcherPatch
  def self.included(base)
    unloadable
    
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
      def default_scope!
        @scope = Setting.send("plugin_redmine_default_activities")[:default_event_types].keys
      end
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
  end
  
end

Redmine::Activity::Fetcher.send(:include, RedmineActivityFetcherPatch)
