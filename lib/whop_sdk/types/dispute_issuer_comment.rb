# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeIssuerComment < Internal::Types::Model
      field :received_at, -> { String }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
