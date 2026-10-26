# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company that issued this invoice.
    class InvoiceLegacyCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :logo, -> { Whop_sdk::Types::InvoiceLegacyCompanyLogo }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
