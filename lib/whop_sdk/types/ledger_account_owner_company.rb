# frozen_string_literal: true

module Whop_sdk
  module Types
    # A company on Whop.
    class LedgerAccountOwnerCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
