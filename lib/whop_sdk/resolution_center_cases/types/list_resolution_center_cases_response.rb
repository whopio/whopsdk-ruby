# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class ListResolutionCenterCasesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCase] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
