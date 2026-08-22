# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotFoundErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::NotFoundErrorBodyError }, optional: false, nullable: false
    end
  end
end
