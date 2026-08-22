# frozen_string_literal: true

module Whop_sdk
  module Types
    class InternalServerErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::InternalServerErrorBodyError }, optional: false, nullable: false
    end
  end
end
