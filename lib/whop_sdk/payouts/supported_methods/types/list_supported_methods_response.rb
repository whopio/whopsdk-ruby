# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        class ListSupportedMethodsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItem] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
