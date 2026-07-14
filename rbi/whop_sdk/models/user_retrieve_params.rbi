# typed: strong

module WhopSDK
  module Models
    class UserRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::UserRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # When set, returns the user's account-specific profile overrides for this
      # account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days
      # ago. Only used with `include_balance_history`.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # On `GET /users/me`, also compute the caller's balance history (opt-in; runs a
      # heavier query). Ignored for other users and for callers without balance-read
      # scope.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_balance_history

      sig { params(include_balance_history: T::Boolean).void }
      attr_writer :include_balance_history

      # Balance-history point granularity. Defaults to `day`. Only used with
      # `include_balance_history`.
      sig do
        returns(T.nilable(WhopSDK::UserRetrieveParams::Interval::OrSymbol))
      end
      attr_reader :interval

      sig do
        params(interval: WhopSDK::UserRetrieveParams::Interval::OrSymbol).void
      end
      attr_writer :interval

      # IANA time zone the balance-history points are bucketed in. Defaults to `UTC`.
      # Only used with `include_balance_history`.
      sig { returns(T.nilable(String)) }
      attr_reader :time_zone

      sig { params(time_zone: String).void }
      attr_writer :time_zone

      # Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only
      # used with `include_balance_history`.
      sig { returns(T.nilable(String)) }
      attr_reader :to

      sig { params(to: String).void }
      attr_writer :to

      sig do
        params(
          id: String,
          account_id: String,
          from: String,
          include_balance_history: T::Boolean,
          interval: WhopSDK::UserRetrieveParams::Interval::OrSymbol,
          time_zone: String,
          to: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # When set, returns the user's account-specific profile overrides for this
        # account.
        account_id: nil,
        # Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days
        # ago. Only used with `include_balance_history`.
        from: nil,
        # On `GET /users/me`, also compute the caller's balance history (opt-in; runs a
        # heavier query). Ignored for other users and for callers without balance-read
        # scope.
        include_balance_history: nil,
        # Balance-history point granularity. Defaults to `day`. Only used with
        # `include_balance_history`.
        interval: nil,
        # IANA time zone the balance-history points are bucketed in. Defaults to `UTC`.
        # Only used with `include_balance_history`.
        time_zone: nil,
        # Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only
        # used with `include_balance_history`.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            from: String,
            include_balance_history: T::Boolean,
            interval: WhopSDK::UserRetrieveParams::Interval::OrSymbol,
            time_zone: String,
            to: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Balance-history point granularity. Defaults to `day`. Only used with
      # `include_balance_history`.
      module Interval
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::UserRetrieveParams::Interval) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOUR = T.let(:hour, WhopSDK::UserRetrieveParams::Interval::TaggedSymbol)
        DAY = T.let(:day, WhopSDK::UserRetrieveParams::Interval::TaggedSymbol)
        WEEK = T.let(:week, WhopSDK::UserRetrieveParams::Interval::TaggedSymbol)
        MONTH =
          T.let(:month, WhopSDK::UserRetrieveParams::Interval::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::UserRetrieveParams::Interval::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
