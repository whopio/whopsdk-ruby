# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ValidatePixelEventsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
