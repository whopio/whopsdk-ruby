# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class AcceptCommissionAdvanceBusinessesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :acknowledgments, -> { Internal::Types::Array[Whop_sdk::Partners::Businesses::Types::AcceptCommissionAdvanceBusinessesRequestAcknowledgmentsItem] }, optional: false, nullable: false

          field :expected_amount_usd, -> { String }, optional: false, nullable: false

          field :offer_token, -> { String }, optional: false, nullable: false

          field :terms_version, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
