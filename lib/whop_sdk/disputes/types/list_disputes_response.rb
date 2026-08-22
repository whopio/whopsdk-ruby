# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class ListDisputesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Dispute] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Disputes::Types::ListDisputesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
