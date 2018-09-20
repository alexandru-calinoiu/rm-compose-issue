require "bundler/setup"

begin
  require "pry-byebug"
rescue LoadError
end

require_relative "rm_composer_issue/container"

RmComposerIssue::Container.finalize!

# Load sub-apps
app_paths = Pathname(__FILE__).dirname.join("../apps").realpath.join("*")
Dir[app_paths].each do |f|
  require "#{f}/system/boot"
end

require "rm_composer_issue/web"
