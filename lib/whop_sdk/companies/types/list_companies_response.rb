# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # The connection type for PublicCompany.
      class ListCompaniesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CompanyListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
