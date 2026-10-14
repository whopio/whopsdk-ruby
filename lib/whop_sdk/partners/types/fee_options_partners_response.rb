# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class FeeOptionsPartnersResponse < Internal::Types::Model
        field :object, -> { Whop_sdk::Partners::Types::FeeOptionsPartnersResponseObject }, optional: false, nullable: false

        field :streams, -> { Internal::Types::Array[Whop_sdk::Partners::Types::FeeOptionsPartnersResponseStreamsItem] }, optional: false, nullable: false
      end
    end
  end
end
