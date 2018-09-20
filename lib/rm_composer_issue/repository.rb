# auto_register: false

require "rom-repository"
require "rm_composer_issue/container"
require "rm_composer_issue/import"

module RmComposerIssue
  class Repository < ROM::Repository::Root
    include Import.args["persistence.rom"]
  end
end
