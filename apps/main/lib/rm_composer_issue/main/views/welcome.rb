require "rm_composer_issue/main/view/controller"

module RmComposerIssue
  module Main
    module Views
      class Welcome < View::Controller
        configure do |config|
          config.template = "welcome"
        end
      end
    end
  end
end
