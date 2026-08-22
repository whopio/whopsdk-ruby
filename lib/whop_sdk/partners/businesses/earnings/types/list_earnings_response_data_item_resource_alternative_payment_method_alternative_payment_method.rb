# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemResourceAlternativePaymentMethodAlternativePaymentMethod < Internal::Types::Model
            field :image_url, -> { String }, optional: false, nullable: true

            field :name, -> { String }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
