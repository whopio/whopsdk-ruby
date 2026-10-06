# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module LeadForms
      module Types
        class ListLeadFormsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::ExternalAccountLeadForm] }, optional: false, nullable: false
        end
      end
    end
  end
end
