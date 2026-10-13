# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class AcceptCommissionAdvanceBusinessesResponse < Internal::Types::Model
          field :commission_advance, -> { Whop_sdk::Types::PartnerAdvance }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
