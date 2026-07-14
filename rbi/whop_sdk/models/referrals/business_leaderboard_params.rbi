# typed: strong

module WhopSDK
  module Models
    module Referrals
      class BusinessLeaderboardParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Referrals::BusinessLeaderboardParams,
              WhopSDK::Internal::AnyHash
            )
          end

        # Time window for the rankings. `day`, `month`, and `year` count earnings since
        # the start of the current calendar day, month, or year; `last_30_days` counts
        # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
        sig do
          returns(
            T.nilable(
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::OrSymbol
            )
          )
        end
        attr_reader :period

        sig do
          params(
            period:
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::OrSymbol
          ).void
        end
        attr_writer :period

        sig do
          params(
            period:
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::OrSymbol,
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
              period:
                WhopSDK::Referrals::BusinessLeaderboardParams::Period::OrSymbol,
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
              T.all(
                Symbol,
                WhopSDK::Referrals::BusinessLeaderboardParams::Period
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :day,
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::TaggedSymbol
            )
          YEAR =
            T.let(
              :year,
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::TaggedSymbol
            )
          LAST_30_DAYS =
            T.let(
              :last_30_days,
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::TaggedSymbol
            )
          ALL_TIME =
            T.let(
              :all_time,
              WhopSDK::Referrals::BusinessLeaderboardParams::Period::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Referrals::BusinessLeaderboardParams::Period::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
