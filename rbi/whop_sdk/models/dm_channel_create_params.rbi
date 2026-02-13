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

      # The list of user identifiers to include in the DM channel. Each entry can be an
      # email, username, or user ID (e.g. 'user_xxxxx').
      sig { returns(T::Array[String]) }
      attr_accessor :with_user_ids

      # The unique identifier of the company to scope this DM channel to. When set, the
      # channel is visible only within that company context.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # A custom display name for the DM channel. For example, 'Project Discussion'.
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
        # The list of user identifiers to include in the DM channel. Each entry can be an
        # email, username, or user ID (e.g. 'user_xxxxx').
        with_user_ids:,
        # The unique identifier of the company to scope this DM channel to. When set, the
        # channel is visible only within that company context.
        company_id: nil,
        # A custom display name for the DM channel. For example, 'Project Discussion'.
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
