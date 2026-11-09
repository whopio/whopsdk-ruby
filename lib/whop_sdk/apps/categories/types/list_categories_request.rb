# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Categories
      module Types
        class ListCategoriesRequest < Internal::Types::Model
          field :app_type, -> { Whop_sdk::Apps::Categories::Types::ListCategoriesRequestAppType }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
