# frozen_string_literal: true

module Whop_sdk
  module Types
    class ResolutionCenterCaseAnswer < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionAttachment] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :question, -> { Whop_sdk::Types::ResolutionCenterCaseAnswerQuestion }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: true
    end
  end
end
