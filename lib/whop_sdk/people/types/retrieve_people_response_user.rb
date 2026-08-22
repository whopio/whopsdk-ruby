# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      # The person's primary whop user, when one of their identities is a whop account.
      class RetrievePeopleResponseUser < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :profile_pic_url, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: false, nullable: false
      end
    end
  end
end
