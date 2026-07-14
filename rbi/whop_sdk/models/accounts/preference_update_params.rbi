# typed: strong

module WhopSDK
  module Models
    module Accounts
      class PreferenceUpdateParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Accounts::PreferenceUpdateParams,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_id

        # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
        # covers the charge when the primary fails.
        sig do
          returns(
            T.nilable(
              WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods
            )
          )
        end
        attr_reader :ads_payment_methods

        sig do
          params(
            ads_payment_methods:
              WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::OrHash
          ).void
        end
        attr_writer :ads_payment_methods

        sig do
          params(
            account_id: String,
            ads_payment_methods:
              WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::OrHash,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account_id:,
          # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          # covers the charge when the primary fails.
          ads_payment_methods: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_id: String,
              ads_payment_methods:
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods,
              request_options: WhopSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AdsPaymentMethods < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary
            )
          end
          attr_reader :primary

          sig do
            params(
              primary:
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::OrHash
            ).void
          end
          attr_writer :primary

          # Optional when the primary is `platform_balance`; omitting it removes any
          # configured card. Required (as `platform_balance`) when the primary is `card`.
          sig do
            returns(
              T.nilable(
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup
              )
            )
          end
          attr_reader :backup

          sig do
            params(
              backup:
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::OrHash
            ).void
          end
          attr_writer :backup

          # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          # covers the charge when the primary fails.
          sig do
            params(
              primary:
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::OrHash,
              backup:
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            primary:,
            # Optional when the primary is `platform_balance`; omitting it removes any
            # configured card. Required (as `platform_balance`) when the primary is `card`.
            backup: nil
          )
          end

          sig do
            override.returns(
              {
                primary:
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary,
                backup:
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup
              }
            )
          end
          def to_hash
          end

          class Primary < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The funding source kind.
            sig do
              returns(
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            # payment method (`payt_`) for `card`. Optional for `platform_balance` — defaults
            # to the account's default Whop balance. Required for `card`.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig do
              params(
                type:
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type::OrSymbol,
                id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The funding source kind.
              type:,
              # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
              # payment method (`payt_`) for `card`. Optional for `platform_balance` — defaults
              # to the account's default Whop balance. Required for `card`.
              id: nil
            )
            end

            sig do
              override.returns(
                {
                  type:
                    WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type::OrSymbol,
                  id: String
                }
              )
            end
            def to_hash
            end

            # The funding source kind.
            module Type
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PLATFORM_BALANCE =
                T.let(
                  :platform_balance,
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type::TaggedSymbol
                )
              CARD =
                T.let(
                  :card,
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Backup < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The funding source kind.
            sig do
              returns(
                WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            # payment method (`payt_`) for `card`. Optional for `platform_balance` — defaults
            # to the account's default Whop balance. Required for `card`.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Optional when the primary is `platform_balance`; omitting it removes any
            # configured card. Required (as `platform_balance`) when the primary is `card`.
            sig do
              params(
                type:
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type::OrSymbol,
                id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The funding source kind.
              type:,
              # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
              # payment method (`payt_`) for `card`. Optional for `platform_balance` — defaults
              # to the account's default Whop balance. Required for `card`.
              id: nil
            )
            end

            sig do
              override.returns(
                {
                  type:
                    WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type::OrSymbol,
                  id: String
                }
              )
            end
            def to_hash
            end

            # The funding source kind.
            module Type
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PLATFORM_BALANCE =
                T.let(
                  :platform_balance,
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type::TaggedSymbol
                )
              CARD =
                T.let(
                  :card,
                  WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type::TaggedSymbol
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
  end
end
