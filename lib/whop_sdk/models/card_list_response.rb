# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#list
    class CardListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute cards
      #
      #   @return [Array<WhopSDK::Models::Card>]
      required :cards, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Card] }

      # @!method initialize(cards:)
      #   @param cards [Array<WhopSDK::Models::Card>]
    end
  end
end
