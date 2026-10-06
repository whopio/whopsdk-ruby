# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module LeadForms
      module Types
        class ListLeadFormsRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :account_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
