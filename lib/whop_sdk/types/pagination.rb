# frozen_string_literal: true

module Whop_sdk
  module Types
    class Pagination < Internal::Types::Model
      field :current_page, -> { Integer }, optional: false, nullable: false

      field :next_page, -> { Integer }, optional: false, nullable: true

      field :prev_page, -> { Integer }, optional: false, nullable: true

      field :total_count, -> { Integer }, optional: false, nullable: false

      field :total_pages, -> { Integer }, optional: false, nullable: false
    end
  end
end
