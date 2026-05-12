# typed: strong

module WhopSDK
  module Models
    class AdCampaignUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCampaignUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The campaign budget in dollars. The interpretation (daily or lifetime) follows
      # the campaign's existing budget type.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The campaign budget in dollars. The interpretation (daily or lifetime) follows
        # the campaign's existing budget type.
        budget: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            budget: T.nilable(Float),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
