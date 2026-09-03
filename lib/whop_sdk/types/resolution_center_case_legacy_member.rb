# frozen_string_literal: true

module Whop_sdk
  module Types
    # The membership record associated with the disputed payment. Null if the membership no longer exists.
    class ResolutionCenterCaseLegacyMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
