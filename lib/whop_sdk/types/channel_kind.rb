# frozen_string_literal: true

module Whop_sdk
  module Types
    module ChannelKind
      extend Whop_sdk::Internal::Types::Enum

      PRIVATE = "private"
      COMMUNITY = "community"
      SUPPORT = "support"
    end
  end
end
