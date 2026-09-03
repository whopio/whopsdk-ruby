# frozen_string_literal: true

module Whop_sdk
  module Types
    class Ad < Internal::Types::Model
      field :ad_campaign, -> { Whop_sdk::Types::AdEntityReference }, optional: false, nullable: false

      field :ad_group, -> { Whop_sdk::Types::AdEntityReference }, optional: false, nullable: false

      field :added_to_cart_value, -> { Integer }, optional: false, nullable: false

      field :added_to_carts, -> { Integer }, optional: false, nullable: false

      field :call_to_action, -> { Whop_sdk::Types::AdCallToAction }, optional: false, nullable: true

      field :click_through_rate, -> { Integer }, optional: false, nullable: false

      field :clicks, -> { Integer }, optional: false, nullable: false

      field :completed_registration_value, -> { Integer }, optional: false, nullable: false

      field :completed_registrations, -> { Integer }, optional: false, nullable: false

      field :contact_value, -> { Integer }, optional: false, nullable: false

      field :contacts, -> { Integer }, optional: false, nullable: false

      field :cost_per_added_to_cart, -> { Integer }, optional: false, nullable: true

      field :cost_per_click, -> { Integer }, optional: false, nullable: false

      field :cost_per_completed_registration, -> { Integer }, optional: false, nullable: true

      field :cost_per_contact, -> { Integer }, optional: false, nullable: true

      field :cost_per_lead, -> { Integer }, optional: false, nullable: true

      field :cost_per_mille, -> { Integer }, optional: false, nullable: false

      field :cost_per_purchase, -> { Integer }, optional: false, nullable: true

      field :cost_per_result, -> { Integer }, optional: false, nullable: true

      field :cost_per_schedule, -> { Integer }, optional: false, nullable: true

      field :cost_per_submitted_application, -> { Integer }, optional: false, nullable: true

      field :cost_per_unique_click, -> { Integer }, optional: false, nullable: true

      field :cost_per_viewed_content, -> { Integer }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :creatives, -> { Internal::Types::Array[Whop_sdk::Types::AdCreative] }, optional: false, nullable: false

      field :custom_conversions, -> { Integer }, optional: false, nullable: false

      field :custom_event_counts, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :custom_event_values, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :delivery_status, -> { Whop_sdk::Types::AdDeliveryStatus }, optional: false, nullable: false

      field :descriptions, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :existing_post_id, -> { String }, optional: false, nullable: true

      field :frequency, -> { Integer }, optional: false, nullable: true

      field :headlines, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :impressions, -> { Integer }, optional: false, nullable: false

      field :issues, -> { Internal::Types::Array[Whop_sdk::Types::AdPlatformIssue] }, optional: false, nullable: false

      field :lead_form, -> { Whop_sdk::Types::AdLeadForm }, optional: true, nullable: false

      field :lead_form_id, -> { String }, optional: true, nullable: false

      field :lead_value, -> { Integer }, optional: false, nullable: false

      field :leads, -> { Integer }, optional: false, nullable: false

      field :link_clicks, -> { Integer }, optional: false, nullable: false

      field :messaging_config, -> { Whop_sdk::Types::AdMessagingConfig }, optional: true, nullable: false

      field :multi_advertiser_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :music, -> { Whop_sdk::Types::AdMusic }, optional: true, nullable: false

      field :post_id, -> { String }, optional: false, nullable: true

      field :post_source, -> { Whop_sdk::Types::AdPostSource }, optional: false, nullable: true

      field :post_thumbnail_url, -> { String }, optional: false, nullable: true

      field :primary_texts, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :purchase_value, -> { Integer }, optional: false, nullable: false

      field :purchases, -> { Integer }, optional: false, nullable: false

      field :reach, -> { Integer }, optional: false, nullable: false

      field :result_event, -> { Whop_sdk::Types::AdResultEvent }, optional: false, nullable: true

      field :result_event_name, -> { String }, optional: false, nullable: true

      field :results, -> { Integer }, optional: false, nullable: true

      field :return_on_ad_spend, -> { Integer }, optional: false, nullable: false

      field :schedule_value, -> { Integer }, optional: false, nullable: false

      field :schedules, -> { Integer }, optional: false, nullable: false

      field :social_accounts, -> { Internal::Types::Array[Whop_sdk::Types::AdEntityReference] }, optional: false, nullable: false

      field :spend, -> { Integer }, optional: false, nullable: false

      field :spend_currency, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AdStatus }, optional: false, nullable: false

      field :submitted_application_value, -> { Integer }, optional: false, nullable: false

      field :submitted_applications, -> { Integer }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :unique_click_through_rate, -> { Integer }, optional: false, nullable: true

      field :unique_clicks, -> { Integer }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true

      field :url_parameters, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :viewed_content_value, -> { Integer }, optional: false, nullable: false

      field :viewed_contents, -> { Integer }, optional: false, nullable: false
    end
  end
end
