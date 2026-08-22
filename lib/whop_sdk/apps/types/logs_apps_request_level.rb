# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      module LogsAppsRequestLevel
        extend Whop_sdk::Internal::Types::Enum

        LOG = "log"
        DEBUG = "debug"
        INFO = "info"
        WARN = "warn"
        ERROR = "error"
      end
    end
  end
end
