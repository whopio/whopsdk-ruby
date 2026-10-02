# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainRegistrant < Internal::Types::Model
      field :address, -> { String }, optional: false, nullable: true

      field :contact_url, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :organization, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true
    end
  end
end
