# typed: strong

module WhopSDK
  module Models
    class PersonListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PersonListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the account, which will look like biz\_******\*******. Optional for
      # account API keys; required for credentials that can access multiple accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor for fetching people after a previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor for fetching people before a later page.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Sort direction. Defaults to desc.
      sig { returns(T.nilable(WhopSDK::PersonListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: WhopSDK::PersonListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # A JSON-encoded array of filters, each with field, operator, and value keys.
      sig { returns(T.nilable(String)) }
      attr_reader :filters

      sig { params(filters: String).void }
      attr_writer :filters

      # The number of people to return (default 100, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Start of the time range as a Unix timestamp. Defaults to 366 days before `to`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :from

      sig { params(from: Integer).void }
      attr_writer :from

      # Column to sort by (e.g. last_seen_at, ltv, purchase_count). Defaults to
      # last_seen_at.
      sig { returns(T.nilable(String)) }
      attr_reader :sort

      sig { params(sort: String).void }
      attr_writer :sort

      # End of the time range as a Unix timestamp. Defaults to now.
      sig { returns(T.nilable(Integer)) }
      attr_reader :to

      sig { params(to: Integer).void }
      attr_writer :to

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          direction: WhopSDK::PersonListParams::Direction::OrSymbol,
          filters: String,
          first: Integer,
          from: Integer,
          sort: String,
          to: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the account, which will look like biz\_******\*******. Optional for
        # account API keys; required for credentials that can access multiple accounts.
        account_id: nil,
        # A cursor for fetching people after a previous page.
        after: nil,
        # A cursor for fetching people before a later page.
        before: nil,
        # Sort direction. Defaults to desc.
        direction: nil,
        # A JSON-encoded array of filters, each with field, operator, and value keys.
        filters: nil,
        # The number of people to return (default 100, max 100).
        first: nil,
        # Start of the time range as a Unix timestamp. Defaults to 366 days before `to`.
        from: nil,
        # Column to sort by (e.g. last_seen_at, ltv, purchase_count). Defaults to
        # last_seen_at.
        sort: nil,
        # End of the time range as a Unix timestamp. Defaults to now.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            direction: WhopSDK::PersonListParams::Direction::OrSymbol,
            filters: String,
            first: Integer,
            from: Integer,
            sort: String,
            to: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PersonListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::PersonListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::PersonListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PersonListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
