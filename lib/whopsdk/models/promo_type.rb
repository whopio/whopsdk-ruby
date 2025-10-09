# frozen_string_literal: true

module Whopsdk
  module Models
    # The type of promo code used to discount a plan
    module PromoType
      extend Whopsdk::Internal::Type::Enum

      PERCENTAGE = :percentage
      FLAT_AMOUNT = :flat_amount

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
