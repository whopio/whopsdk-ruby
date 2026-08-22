# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company member associated with this setup intent. Null if the user is not a member.
    class SetupIntentMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::SetupIntentMemberUser }, optional: false, nullable: true
    end
  end
end
