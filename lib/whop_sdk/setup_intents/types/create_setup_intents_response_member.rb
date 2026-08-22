# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      # The company member associated with this setup intent. Null if the user is not a member.
      class CreateSetupIntentsResponseMember < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :user, -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsResponseMemberUser }, optional: false, nullable: true
      end
    end
  end
end
