# typed: strong

module WhopSDK
  module Models
    class DmChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DmChannelCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The user ids to create a DM with. Can be email, username or user_id (tag)
      sig { returns(T::Array[String]) }
      attr_accessor :with_user_ids

      # The ID of the company to scope this DM channel to.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The custom name for the DM channel
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      sig do
        params(
          with_user_ids: T::Array[String],
          company_id: T.nilable(String),
          custom_name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The user ids to create a DM with. Can be email, username or user_id (tag)
        with_user_ids:,
        # The ID of the company to scope this DM channel to.
        company_id: nil,
        # The custom name for the DM channel
        custom_name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            with_user_ids: T::Array[String],
            company_id: T.nilable(String),
            custom_name: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
