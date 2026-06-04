# frozen_string_literal: true

module WhopSDK
  module Models
    # The kind of identity profile (individual vs business).
    module IdentityProfileKind
      extend WhopSDK::Internal::Type::Enum

      INDIVIDUAL = :individual
      BUSINESS = :business

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
