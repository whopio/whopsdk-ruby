# frozen_string_literal: true

module Whop_sdk
  module Types
    class ForbiddenErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::ForbiddenErrorBodyError }, optional: false, nullable: false
    end
  end
end
