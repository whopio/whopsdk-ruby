# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppDeploymentPhase
      extend Whop_sdk::Internal::Types::Enum

      INSTALL = "install"
      BUILD = "build"
      TYPECHECK = "typecheck"
      UPLOAD_BUILD = "upload_build"
      UPLOAD_SOURCE = "upload_source"
      PROCESS_ARCHIVE = "process_archive"
      CREATE_BUILD = "create_build"
      PROMOTE = "promote"
    end
  end
end
