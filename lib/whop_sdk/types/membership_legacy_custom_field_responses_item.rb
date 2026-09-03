# frozen_string_literal: true

module Whop_sdk
  module Types
    # The response from a custom field on checkout
    class MembershipLegacyCustomFieldResponsesItem < Internal::Types::Model
      field :answer, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :question, -> { String }, optional: false, nullable: false
    end
  end
end
