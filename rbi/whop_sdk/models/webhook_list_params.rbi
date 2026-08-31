# typed: strong

module WhopSDK
  module Models
    class WebhookListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the account to list webhooks for.
      sig { returns(String) }
      attr_accessor :account_id

      # A cursor; returns webhooks after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Only return webhooks attached to this app. Omit to list the account's own
      # webhooks.
      sig { returns(T.nilable(String)) }
      attr_reader :app_id

      sig { params(app_id: String).void }
      attr_writer :app_id

      # A cursor; returns webhooks before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The number of webhooks to return (default 20, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Only return webhooks whose endpoint is currently failing — every delivery since
      # the current failure streak began has been rejected. Clears as soon as a delivery
      # succeeds.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_failures

      sig { params(has_failures: T::Boolean).void }
      attr_writer :has_failures

      # Also return webhooks attached to the account's apps, not just the account's own.
      # Cannot be combined with `app_id`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_app_webhooks

      sig { params(include_app_webhooks: T::Boolean).void }
      attr_writer :include_app_webhooks

      # The number of webhooks to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          app_id: String,
          before: String,
          first: Integer,
          has_failures: T::Boolean,
          include_app_webhooks: T::Boolean,
          last: Integer,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the account to list webhooks for.
        account_id:,
        # A cursor; returns webhooks after this position.
        after: nil,
        # Only return webhooks attached to this app. Omit to list the account's own
        # webhooks.
        app_id: nil,
        # A cursor; returns webhooks before this position.
        before: nil,
        # The number of webhooks to return (default 20, max 100).
        first: nil,
        # Only return webhooks whose endpoint is currently failing — every delivery since
        # the current failure streak began has been rejected. Clears as soon as a delivery
        # succeeds.
        has_failures: nil,
        # Also return webhooks attached to the account's apps, not just the account's own.
        # Cannot be combined with `app_id`.
        include_app_webhooks: nil,
        # The number of webhooks to return from the end of the range.
        last: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            app_id: String,
            before: String,
            first: Integer,
            has_failures: T::Boolean,
            include_app_webhooks: T::Boolean,
            last: Integer,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
