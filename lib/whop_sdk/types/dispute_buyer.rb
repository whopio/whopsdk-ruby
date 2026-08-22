# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeBuyer < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: true

      field :member_id, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :user_id, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: true
    end
  end
end
