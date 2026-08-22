# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        class ListMethodsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Payouts::Methods::Types::ListMethodsResponseDataItem] }, optional: false, nullable: false

          field :limits, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseLimits }, optional: true, nullable: false

          field :page_info, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
