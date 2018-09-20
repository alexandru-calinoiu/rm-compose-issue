module Test
  module DatabaseHelpers
    module_function

    def rom
      RmComposerIssue::Container["persistence.rom"]
    end

    def db
      RmComposerIssue::Container["persistence.db"]
    end
  end
end
