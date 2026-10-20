# frozen_string_literal: true

module Whop_sdk
  module EmailAddresses
    module Types
      class CreateEmailAddressesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :address, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
