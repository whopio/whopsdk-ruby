# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemResourceAlternativePaymentMethod < Internal::Types::Model
            field :alternative_payment_method, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceAlternativePaymentMethodAlternativePaymentMethod }, optional: false, nullable: true

            field :brand, -> { String }, optional: false, nullable: true

            field :created_at, -> { String }, optional: false, nullable: false

            field :currency, -> { String }, optional: false, nullable: false

            field :id, -> { String }, optional: false, nullable: false

            field :last4, -> { String }, optional: false, nullable: true

            field :object, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceAlternativePaymentMethodObject }, optional: false, nullable: false

            field :payment_method_type, -> { String }, optional: false, nullable: true

            field :processor, -> { String }, optional: false, nullable: true
          end
        end
      end
    end
  end
end
