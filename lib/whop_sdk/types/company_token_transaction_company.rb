# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company whose token balance this transaction affects.
    class CompanyTokenTransactionCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
