# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class InviteMembershipsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Memberships::Types::InviteMembershipsRequestBodyUserID }

        member -> { Whop_sdk::Memberships::Types::InviteMembershipsRequestBodyEmail }
      end
    end
  end
end
