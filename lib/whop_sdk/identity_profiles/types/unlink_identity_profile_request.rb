# frozen_string_literal: true

module Whop_sdk
  module IdentityProfiles
    module Types
      class UnlinkIdentityProfileRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :ledger_account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
