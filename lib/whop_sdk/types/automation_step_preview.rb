# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationStepPreview < Internal::Types::Model
      field :action_type, -> { Whop_sdk::Types::AutomationStepPreviewActionType }, optional: false, nullable: false

      field :html, -> { String }, optional: false, nullable: true

      field :outcome, -> { Whop_sdk::Types::AutomationStepPreviewOutcome }, optional: false, nullable: false

      field :preheader, -> { String }, optional: false, nullable: true

      field :reason, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: true
    end
  end
end
