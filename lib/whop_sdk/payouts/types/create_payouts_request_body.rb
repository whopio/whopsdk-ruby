# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class CreatePayoutsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Object }
      end
    end
  end
end
