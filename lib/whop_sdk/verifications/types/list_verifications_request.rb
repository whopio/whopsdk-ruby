# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :order, -> { Whop_sdk::Verifications::Types::ListVerificationsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Verifications::Types::ListVerificationsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
