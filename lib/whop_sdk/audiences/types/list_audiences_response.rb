# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      class ListAudiencesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Audience] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Audiences::Types::ListAudiencesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
