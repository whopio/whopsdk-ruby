# frozen_string_literal: true

module Whop_sdk
  module Types
    class TooManyRequestsErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::TooManyRequestsErrorBodyError }, optional: false, nullable: false
    end
  end
end
