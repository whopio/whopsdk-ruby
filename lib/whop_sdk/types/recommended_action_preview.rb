# frozen_string_literal: true

module Whop_sdk
  module Types
    # The website change a recommended action makes when it runs. `type` picks the shape. New types can be added, so
    # skip a preview whose `type` you do not know.
    class RecommendedActionPreview < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :type

      member -> { Whop_sdk::Types::RecommendedActionWebsiteAbTestPreview }, key: "WEBSITE_AB_TEST"

      member -> { Whop_sdk::Types::RecommendedActionWebsiteChangePreview }, key: "WEBSITE_CHANGE"
    end
  end
end
