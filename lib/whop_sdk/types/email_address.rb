# frozen_string_literal: true

module Whop_sdk
  module Types
    class EmailAddress < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :address, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :domain_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :password, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
