# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # Who the event was about, as far as the page knew. Keys the event did not carry are left out.
      class PostEventsCreatedPayloadDataEventsItemUser < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
