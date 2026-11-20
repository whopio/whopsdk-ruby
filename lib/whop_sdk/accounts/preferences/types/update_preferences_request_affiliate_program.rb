# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # The account's affiliate program. Only the fields you send change, and fields left out keep their current
        # values. To clear a field, set it to `null`. To turn affiliates on or off, set `global_affiliate_status` and
        # `member_affiliate_status` on each product with `PATCH /products/{id}`. Requires the `affiliate:update` scope
        # on your API key.
        class UpdatePreferencesRequestAffiliateProgram < Internal::Types::Model
          field :application_questions, -> { Internal::Types::Array[Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAffiliateProgramApplicationQuestionsItem] }, optional: true, nullable: false

          field :application_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :featured_product_id, -> { String }, optional: true, nullable: false

          field :instructions, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
