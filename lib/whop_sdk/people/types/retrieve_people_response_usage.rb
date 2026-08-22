# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      # Exact usage breakdowns for the person's browser traffic (distinct events per value).
      class RetrievePeopleResponseUsage < Internal::Types::Model
        field :browser, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageBrowserItem] }, optional: true, nullable: false

        field :city, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageCityItem] }, optional: true, nullable: false

        field :country, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageCountryItem] }, optional: true, nullable: false

        field :device, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageDeviceItem] }, optional: true, nullable: false

        field :ip, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageIPItem] }, optional: true, nullable: false

        field :os, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageOsItem] }, optional: true, nullable: false

        field :referrer, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageReferrerItem] }, optional: true, nullable: false

        field :timezone, -> { Internal::Types::Array[Whop_sdk::People::Types::RetrievePeopleResponseUsageTimezoneItem] }, optional: true, nullable: false
      end
    end
  end
end
