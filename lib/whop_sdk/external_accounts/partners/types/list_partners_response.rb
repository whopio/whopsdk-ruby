# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Partners
      module Types
        class ListPartnersResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::ExternalAccount] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::ExternalAccounts::Partners::Types::ListPartnersResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
