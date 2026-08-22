# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class EventsResolutionCenterCasesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionEvent] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::ResolutionCenterCases::Types::EventsResolutionCenterCasesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
