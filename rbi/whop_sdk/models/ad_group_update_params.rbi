# typed: strong

module WhopSDK
  module Models
    class AdGroupUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdGroupUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Budget amount in dollars. The interpretation (daily or lifetime) follows the ad
      # group's existing budget type.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # Human-readable ad group title.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Budget amount in dollars. The interpretation (daily or lifetime) follows the ad
        # group's existing budget type.
        budget: nil,
        # Human-readable ad group title.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            budget: T.nilable(Float),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
