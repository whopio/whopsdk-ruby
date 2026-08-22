# frozen_string_literal: true

module Whop_sdk
  module Types
    class ResolutionEvent < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::ResolutionEventAction }, optional: false, nullable: false

      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionAttachment] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :details, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :reporter_type, -> { Whop_sdk::Types::ResolutionEventReporterType }, optional: false, nullable: false

      field :viewable_by_customer, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :viewable_by_merchant, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
