# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExternalMessageEmail < Internal::Types::Model
      field :from_address, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::ExternalMessageEmailObject }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ExternalMessageEmailStatus }, optional: false, nullable: false

      field :subject, -> { String }, optional: false, nullable: true

      field :to_address, -> { String }, optional: false, nullable: true
    end
  end
end
