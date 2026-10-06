# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class UpdateAdGroupsRequestKeywordsItem < Internal::Types::Model
        field :match_type, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestKeywordsItemMatchType }, optional: true, nullable: false

        field :negative, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :text, -> { String }, optional: false, nullable: false
      end
    end
  end
end
