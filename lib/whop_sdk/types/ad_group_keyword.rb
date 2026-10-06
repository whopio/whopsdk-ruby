# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupKeyword < Internal::Types::Model
      field :match_type, -> { Whop_sdk::Types::AdGroupKeywordMatchType }, optional: false, nullable: false

      field :negative, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
