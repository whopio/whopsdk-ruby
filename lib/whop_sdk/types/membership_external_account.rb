# frozen_string_literal: true

module Whop_sdk
  module Types
    class MembershipExternalAccount < Internal::Types::Model
      field :external_id, -> { String }, optional: false, nullable: false

      field :platform, -> { Whop_sdk::Types::MembershipExternalAccountPlatform }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: true
    end
  end
end
