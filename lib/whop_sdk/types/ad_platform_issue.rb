# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdPlatformIssue < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: true

      field :resource_type, -> { Whop_sdk::Types::AdPlatformIssueResourceType }, optional: false, nullable: false
    end
  end
end
