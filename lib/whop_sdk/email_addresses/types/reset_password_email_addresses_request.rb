# frozen_string_literal: true

module Whop_sdk
  module EmailAddresses
    module Types
      class ResetPasswordEmailAddressesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
