# frozen_string_literal: true

module Whop_sdk
  module Types
    class SuspensionAppeal < Internal::Types::Model
      field :accounts, -> { Internal::Types::Array[Whop_sdk::Types::SuspensionAppealAccount] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :decided_at, -> { String }, optional: false, nullable: true

      field :external_reason, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :review_due_at, -> { String }, optional: false, nullable: false

      field :reviewer_note, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::SuspensionAppealStatus }, optional: false, nullable: false

      field :subject_id, -> { String }, optional: false, nullable: false
    end
  end
end
