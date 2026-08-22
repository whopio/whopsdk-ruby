# frozen_string_literal: true

module Whop_sdk
  module Types
    class V1ErrorResponse < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::V1ErrorResponseError }, optional: false, nullable: false
    end
  end
end
