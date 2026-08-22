# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemUser < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
