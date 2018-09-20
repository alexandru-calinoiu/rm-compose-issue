require "pathname"
require "dry/web/container"
require "dry/system/components"

module RmComposerIssue
  module Main
    class Container < Dry::Web::Container
      require root.join("system/rm_composer_issue/container")
      import core: RmComposerIssue::Container

      configure do |config|
        config.root = Pathname(__FILE__).join("../../..").realpath.dirname.freeze
        config.logger = RmComposerIssue::Container[:logger]
        config.default_namespace = "rm_composer_issue.main"
        config.auto_register = %w[lib/rm_composer_issue/main]
      end

      load_paths! "lib"
    end
  end
end
