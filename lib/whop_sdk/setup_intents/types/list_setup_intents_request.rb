# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      class ListSetupIntentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::SetupIntents::Types::ListSetupIntentsRequestStatus }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::SetupIntents::Types::ListSetupIntentsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::SetupIntents::Types::ListSetupIntentsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
