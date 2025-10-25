# frozen_string_literal: true

module WhopSDK
  module Models
    # Statuses for promo codes
    module PromoCodeStatus
      extend WhopSDK::Internal::Type::Enum

      ACTIVE = :active
      INACTIVE = :inactive
      ARCHIVED = :archived

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
