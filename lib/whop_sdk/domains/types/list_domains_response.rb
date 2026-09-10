# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class ListDomainsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Domain] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Domains::Types::ListDomainsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
