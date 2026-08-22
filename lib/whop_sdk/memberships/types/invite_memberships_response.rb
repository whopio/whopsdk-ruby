# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class InviteMembershipsResponse < Internal::Types::Model
        field :invitation_sent, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
