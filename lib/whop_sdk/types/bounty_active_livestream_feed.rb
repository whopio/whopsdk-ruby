# frozen_string_literal: true

module Whop_sdk
  module Types
    class BountyActiveLivestreamFeed < Internal::Types::Model
      field :host, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
