# typed: strong

module WhopSDK
  module Models
    class AppLogsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppLogsParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # A cursor for fetching logs after a previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Only return logs from this build.
      sig { returns(T.nilable(String)) }
      attr_reader :app_build_id

      sig { params(app_build_id: String).void }
      attr_writer :app_build_id

      # A cursor for fetching logs before a later page.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before
      # created_before.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # End of the time window as an ISO 8601 timestamp. Defaults to now.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The number of log lines to return (max 500).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Only return console lines of this level.
      sig { returns(T.nilable(WhopSDK::AppLogsParams::Level::OrSymbol)) }
      attr_reader :level

      sig { params(level: WhopSDK::AppLogsParams::Level::OrSymbol).void }
      attr_writer :level

      # Only return logs whose message contains this text (case-insensitive).
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      sig do
        params(
          id: String,
          after: String,
          app_build_id: String,
          before: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          level: WhopSDK::AppLogsParams::Level::OrSymbol,
          query: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A cursor for fetching logs after a previous page.
        after: nil,
        # Only return logs from this build.
        app_build_id: nil,
        # A cursor for fetching logs before a later page.
        before: nil,
        # Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before
        # created_before.
        created_after: nil,
        # End of the time window as an ISO 8601 timestamp. Defaults to now.
        created_before: nil,
        # The number of log lines to return (max 500).
        first: nil,
        # Only return console lines of this level.
        level: nil,
        # Only return logs whose message contains this text (case-insensitive).
        query: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            after: String,
            app_build_id: String,
            before: String,
            created_after: Time,
            created_before: Time,
            first: Integer,
            level: WhopSDK::AppLogsParams::Level::OrSymbol,
            query: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return console lines of this level.
      module Level
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppLogsParams::Level) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOG = T.let(:log, WhopSDK::AppLogsParams::Level::TaggedSymbol)
        DEBUG = T.let(:debug, WhopSDK::AppLogsParams::Level::TaggedSymbol)
        INFO = T.let(:info, WhopSDK::AppLogsParams::Level::TaggedSymbol)
        WARN = T.let(:warn, WhopSDK::AppLogsParams::Level::TaggedSymbol)
        ERROR = T.let(:error, WhopSDK::AppLogsParams::Level::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppLogsParams::Level::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
