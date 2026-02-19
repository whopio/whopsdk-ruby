# frozen_string_literal: true

module WhopSDK
  module Models
    # The different business types a company can be.
    module BusinessTypes
      extend WhopSDK::Internal::Type::Enum

      EDUCATION_PROGRAM = :education_program
      COACHING = :coaching
      SOFTWARE = :software
      PAID_GROUP = :paid_group
      NEWSLETTER = :newsletter
      AGENCY = :agency
      PHYSICAL_PRODUCTS = :physical_products
      BRICK_AND_MORTAR = :brick_and_mortar
      EVENTS = :events
      COACHING_AND_COURSES = :coaching_and_courses
      OTHER = :other
      SERVICES = :services
      GIG_ECONOMY = :gig_economy
      MARKETPLACE = :marketplace
      TELEHEALTH = :telehealth
      CLASS_ACTION_SETTLEMENT = :class_action_settlement
      PHYSICAL_PRODUCT = :physical_product
      SAAS = :saas
      COURSE = :course
      COMMUNITY = :community

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
