# frozen_string_literal: true

module WhopSDK
  module Models
    # Who can post on a forum feed
    module WhoCanPostTypes
      extend WhopSDK::Internal::Type::Enum

      EVERYONE = :everyone
      ADMINS = :admins

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
