# typed: strong

module WhopSDK
  module Models
    module Accounts
      class PreferenceRetrieveResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::Accounts::PreferenceRetrieveResponse,
              WhopSDK::Internal::AnyHash
            )
          end

        # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
        # covers the charge when the primary fails. `null` until ads billing has been
        # configured.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods
            )
          )
        end
        attr_reader :ads_payment_methods

        sig do
          params(
            ads_payment_methods:
              T.nilable(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::OrHash
              )
          ).void
        end
        attr_writer :ads_payment_methods

        sig do
          params(
            ads_payment_methods:
              T.nilable(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          # covers the charge when the primary fails. `null` until ads billing has been
          # configured.
          ads_payment_methods:
        )
        end

        sig do
          override.returns(
            {
              ads_payment_methods:
                T.nilable(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods
                )
            }
          )
        end
        def to_hash
        end

        class AdsPaymentMethods < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup
              )
            )
          end
          attr_reader :backup

          sig do
            params(
              backup:
                T.nilable(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::OrHash
                )
            ).void
          end
          attr_writer :backup

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary
              )
            )
          end
          attr_reader :primary

          sig do
            params(
              primary:
                T.nilable(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::OrHash
                )
            ).void
          end
          attr_writer :primary

          # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          # covers the charge when the primary fails. `null` until ads billing has been
          # configured.
          sig do
            params(
              backup:
                T.nilable(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::OrHash
                ),
              primary:
                T.nilable(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(backup:, primary:)
          end

          sig do
            override.returns(
              {
                backup:
                  T.nilable(
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup
                  ),
                primary:
                  T.nilable(
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary
                  )
              }
            )
          end
          def to_hash
          end

          class Backup < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            # payment method (`payt_`) for `card`.
            sig { returns(String) }
            attr_accessor :id

            # The funding source kind: a Whop balance or a saved card.
            sig do
              returns(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                id: String,
                type:
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
              # payment method (`payt_`) for `card`.
              id:,
              # The funding source kind: a Whop balance or a saved card.
              type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  type:
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The funding source kind: a Whop balance or a saved card.
            module Type
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PLATFORM_BALANCE =
                T.let(
                  :platform_balance,
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type::TaggedSymbol
                )
              CARD =
                T.let(
                  :card,
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Backup::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Primary < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            # payment method (`payt_`) for `card`.
            sig { returns(String) }
            attr_accessor :id

            # The funding source kind: a Whop balance or a saved card.
            sig do
              returns(
                WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                id: String,
                type:
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
              # payment method (`payt_`) for `card`.
              id:,
              # The funding source kind: a Whop balance or a saved card.
              type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  type:
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The funding source kind: a Whop balance or a saved card.
            module Type
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PLATFORM_BALANCE =
                T.let(
                  :platform_balance,
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type::TaggedSymbol
                )
              CARD =
                T.let(
                  :card,
                  WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods::Primary::Type::TaggedSymbol
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
