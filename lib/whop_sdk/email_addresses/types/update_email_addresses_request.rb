# frozen_string_literal: true

module Whop_sdk
  module EmailAddresses
    module Types
      class UpdateEmailAddressesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
