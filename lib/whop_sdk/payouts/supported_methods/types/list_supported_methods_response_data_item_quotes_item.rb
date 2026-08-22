# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        class ListSupportedMethodsResponseDataItemQuotesItem < Internal::Types::Model
          field :amount, -> { Integer }, optional: false, nullable: false

          field :currency, -> { String }, optional: false, nullable: false

          field :destination_currency, -> { String }, optional: false, nullable: false

          field :exchange_rate, -> { Integer }, optional: false, nullable: false

          field :instant, -> { Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemQuotesItemInstant }, optional: false, nullable: true

          field :max_limit, -> { Integer }, optional: false, nullable: true

          field :min_limit, -> { Integer }, optional: false, nullable: false

          field :standard, -> { Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemQuotesItemStandard }, optional: false, nullable: true
        end
      end
    end
  end
end
