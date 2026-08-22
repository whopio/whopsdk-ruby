# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class UpdateDisputesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :evidence, -> { Whop_sdk::Disputes::Types::UpdateDisputesRequestEvidence }, optional: true, nullable: false
      end
    end
  end
end
