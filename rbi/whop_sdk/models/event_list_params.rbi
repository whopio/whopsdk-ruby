# typed: strong

module WhopSDK
  module Models
    class EventListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::EventListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the person.
      sig { returns(String) }
      attr_accessor :person_id

      # The ID of the account, which will look like biz\_******\*******. Optional for
      # account API keys; required for credentials that can access multiple accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor for fetching events after a previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor for fetching events before a later page.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The number of events to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Start of the time range as a Unix timestamp.
      sig { returns(T.nilable(Integer)) }
      attr_reader :from

      sig { params(from: Integer).void }
      attr_writer :from

      # End of the time range as a Unix timestamp. Defaults to now.
      sig { returns(T.nilable(Integer)) }
      attr_reader :to

      sig { params(to: Integer).void }
      attr_writer :to

      sig do
        params(
          person_id: String,
          account_id: String,
          after: String,
          before: String,
          first: Integer,
          from: Integer,
          to: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the person.
        person_id:,
        # The ID of the account, which will look like biz\_******\*******. Optional for
        # account API keys; required for credentials that can access multiple accounts.
        account_id: nil,
        # A cursor for fetching events after a previous page.
        after: nil,
        # A cursor for fetching events before a later page.
        before: nil,
        # The number of events to return.
        first: nil,
        # Start of the time range as a Unix timestamp.
        from: nil,
        # End of the time range as a Unix timestamp. Defaults to now.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            person_id: String,
            account_id: String,
            after: String,
            before: String,
            first: Integer,
            from: Integer,
            to: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
