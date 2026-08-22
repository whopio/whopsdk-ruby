# frozen_string_literal: true

module Whop_sdk
  module Types
    # The user who owns this membership. Null if the user account has been deleted.
    class MembershipListItemUser < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :profile_pic, -> { String }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
