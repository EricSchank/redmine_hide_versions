# Actually hide version from projects
module HiddenVersionsProjectPatch
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      unloadable # Send unloadable so it will not be unloaded in development

      alias_method_chain :shared_versions, :hidden_versions
    end
  end

  module InstanceMethods
    # Hides versions that are hidden
    def shared_versions_with_hidden_versions
      results = shared_versions_without_hidden_versions
      
      if User.current.admin?
        results
      else
        results.where(:hidden => false)
      end
    end
  end
end

Project.send(:include, HiddenVersionsProjectPatch)