# frozen_string_literal: true

module Whop_sdk
  module Leads
    module Types
      # The connection type for Lead.
      class ListLeadsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::LeadListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
