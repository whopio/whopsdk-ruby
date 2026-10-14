# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ResendInviteBusinessesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :invite_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
