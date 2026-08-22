# frozen_string_literal: true

module Whop_sdk
  module Types
    class UnauthorizedErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::UnauthorizedErrorBodyError }, optional: false, nullable: false
    end
  end
end
