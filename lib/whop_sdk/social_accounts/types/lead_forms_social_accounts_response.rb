# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class LeadFormsSocialAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::SocialAccountLeadForm] }, optional: false, nullable: false
      end
    end
  end
end
