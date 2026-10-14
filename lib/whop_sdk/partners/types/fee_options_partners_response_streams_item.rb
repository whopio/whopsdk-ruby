# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class FeeOptionsPartnersResponseStreamsItem < Internal::Types::Model
        field :adjustable, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :commission_percentage, -> { Integer }, optional: false, nullable: true

        field :fee, -> { Whop_sdk::Partners::Types::FeeOptionsPartnersResponseStreamsItemFee }, optional: false, nullable: true

        field :income_stream, -> { Whop_sdk::Partners::Types::FeeOptionsPartnersResponseStreamsItemIncomeStream }, optional: false, nullable: false

        field :unadjustable_reason, -> { Whop_sdk::Partners::Types::FeeOptionsPartnersResponseStreamsItemUnadjustableReason }, optional: false, nullable: true
      end
    end
  end
end
