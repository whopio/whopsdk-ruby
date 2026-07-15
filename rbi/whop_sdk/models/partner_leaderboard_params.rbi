# typed: strong

module WhopSDK
  module Models
    class PartnerLeaderboardParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PartnerLeaderboardParams, WhopSDK::Internal::AnyHash)
        end

      # Time window for the rankings. `day`, `month`, and `year` count earnings since
      # the start of the current calendar day, month, or year; `last_30_days` counts
      # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
      sig do
        returns(T.nilable(WhopSDK::PartnerLeaderboardParams::Period::OrSymbol))
      end
      attr_reader :period

      sig do
        params(period: WhopSDK::PartnerLeaderboardParams::Period::OrSymbol).void
      end
      attr_writer :period

      sig do
        params(
          period: WhopSDK::PartnerLeaderboardParams::Period::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Time window for the rankings. `day`, `month`, and `year` count earnings since
        # the start of the current calendar day, month, or year; `last_30_days` counts
        # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
        period: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            period: WhopSDK::PartnerLeaderboardParams::Period::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Time window for the rankings. `day`, `month`, and `year` count earnings since
      # the start of the current calendar day, month, or year; `last_30_days` counts
      # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
      module Period
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PartnerLeaderboardParams::Period)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY =
          T.let(:day, WhopSDK::PartnerLeaderboardParams::Period::TaggedSymbol)
        MONTH =
          T.let(:month, WhopSDK::PartnerLeaderboardParams::Period::TaggedSymbol)
        YEAR =
          T.let(:year, WhopSDK::PartnerLeaderboardParams::Period::TaggedSymbol)
        LAST_30_DAYS =
          T.let(
            :last_30_days,
            WhopSDK::PartnerLeaderboardParams::Period::TaggedSymbol
          )
        ALL_TIME =
          T.let(
            :all_time,
            WhopSDK::PartnerLeaderboardParams::Period::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::PartnerLeaderboardParams::Period::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
