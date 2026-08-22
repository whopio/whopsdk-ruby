# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItem] }, optional: true, nullable: false
      end
    end
  end
end
