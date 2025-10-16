# frozen_string_literal: true

module WhopSDK
  module Models
    # The different types of an app view
    module AppViewType
      extend WhopSDK::Internal::Type::Enum

      HUB = :hub
      DISCOVER = :discover
      DASH = :dash
      DASHBOARD = :dashboard
      ANALYTICS = :analytics

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
