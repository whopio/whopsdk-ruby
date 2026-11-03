# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdIssue < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :policy, -> { Whop_sdk::Types::AdIssuePolicy }, optional: false, nullable: true

      field :reason, -> { Whop_sdk::Types::AdIssueReason }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: true

      field :resource_type, -> { Whop_sdk::Types::AdIssueResourceType }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
