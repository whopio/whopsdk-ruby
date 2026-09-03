# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company involved in this resolution case. Null if the company no longer exists.
    class ResolutionCenterCaseLegacyCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
