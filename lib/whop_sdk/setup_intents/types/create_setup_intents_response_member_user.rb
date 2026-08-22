# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      # The user for this member, if any.
      class CreateSetupIntentsResponseMemberUser < Internal::Types::Model
        field :email, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: true

        field :username, -> { String }, optional: false, nullable: false
      end
    end
  end
end
