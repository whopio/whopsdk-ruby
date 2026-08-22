# frozen_string_literal: true

module Whop_sdk
  module Types
    class ListAPIKeysRequestCreatedAfter < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Integer }

      member -> { String }
    end
  end
end
