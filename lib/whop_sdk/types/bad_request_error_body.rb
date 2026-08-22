# frozen_string_literal: true

module Whop_sdk
  module Types
    class BadRequestErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::BadRequestErrorBodyError }, optional: false, nullable: false
    end
  end
end
