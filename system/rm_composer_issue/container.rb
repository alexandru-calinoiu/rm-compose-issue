require "dry/web/container"
require "dry/system/components"

module RmComposerIssue
  class Container < Dry::Web::Container
    configure do
      config.name = :rm_composer_issue
      config.listeners = true
      config.default_namespace = "rm_composer_issue"
      config.auto_register = %w[lib/rm_composer_issue]
    end

    load_paths! "lib"
  end
end
