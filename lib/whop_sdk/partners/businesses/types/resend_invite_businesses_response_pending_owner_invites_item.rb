# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ResendInviteBusinessesResponsePendingOwnerInvitesItem < Internal::Types::Model
          field :email, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
