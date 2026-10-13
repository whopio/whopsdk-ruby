# frozen_string_literal: true

module Whop_sdk
  module Types
    # The account's own cancel reason the member picked, as they saw it. `null` when the member picked a default
    # category or gave no reason.
    class MembershipListItemFeedbackOption < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false
    end
  end
end
