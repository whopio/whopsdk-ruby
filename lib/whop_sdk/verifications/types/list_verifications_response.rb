# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Verifications::Types::ListVerificationsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
