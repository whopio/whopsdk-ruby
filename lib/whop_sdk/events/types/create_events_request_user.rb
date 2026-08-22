# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # User identity and profile data.
      class CreateEventsRequestUser < Internal::Types::Model
        field :anonymous_id, -> { String }, optional: true, nullable: false

        field :birthdate, -> { String }, optional: true, nullable: false

        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :gender, -> { Whop_sdk::Events::Types::CreateEventsRequestUserGender }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :linked_anonymous_id, -> { String }, optional: true, nullable: false

        field :linked_wuid, -> { String }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :membership_id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
