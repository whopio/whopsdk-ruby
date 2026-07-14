# typed: strong

module WhopSDK
  module Models
    class DepositCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DepositCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Account ID of the destination owner. Null for raw wallet address destinations.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # URL of the hosted deposit page. Only present for business destinations.
      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_url

      # Metadata from the request.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # Available deposit methods for destination.
      sig { returns(WhopSDK::Models::DepositCreateResponse::Methods) }
      attr_reader :methods_

      sig do
        params(
          methods_: WhopSDK::Models::DepositCreateResponse::Methods::OrHash
        ).void
      end
      attr_writer :methods_

      sig do
        returns(WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      # Requested deposit amount.
      sig { returns(T.nilable(String)) }
      attr_reader :amount

      sig { params(amount: String).void }
      attr_writer :amount

      sig do
        params(
          account_id: T.nilable(String),
          hosted_url: T.nilable(String),
          metadata: T::Hash[Symbol, T.anything],
          methods_: WhopSDK::Models::DepositCreateResponse::Methods::OrHash,
          object: WhopSDK::Models::DepositCreateResponse::Object::OrSymbol,
          amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID of the destination owner. Null for raw wallet address destinations.
        account_id:,
        # URL of the hosted deposit page. Only present for business destinations.
        hosted_url:,
        # Metadata from the request.
        metadata:,
        # Available deposit methods for destination.
        methods_:,
        object:,
        # Requested deposit amount.
        amount: nil
      )
      end

      sig do
        override.returns(
          {
            account_id: T.nilable(String),
            hosted_url: T.nilable(String),
            metadata: T::Hash[Symbol, T.anything],
            methods_: WhopSDK::Models::DepositCreateResponse::Methods,
            object:
              WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol,
            amount: String
          }
        )
      end
      def to_hash
      end

      class Methods < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DepositCreateResponse::Methods,
              WhopSDK::Internal::AnyHash
            )
          end

        # Bank deposit details. Only present when bank deposits are active for the
        # destination account.
        sig do
          returns(
            T.nilable(WhopSDK::Models::DepositCreateResponse::Methods::Bank)
          )
        end
        attr_reader :bank

        sig do
          params(
            bank:
              T.nilable(
                WhopSDK::Models::DepositCreateResponse::Methods::Bank::OrHash
              )
          ).void
        end
        attr_writer :bank

        # Crypto networks available for this deposit, each with its on-chain deposit
        # address and the tokens accepted on that network.
        sig do
          returns(
            T::Array[WhopSDK::Models::DepositCreateResponse::Methods::Crypto]
          )
        end
        attr_accessor :crypto

        # Available deposit methods for destination.
        sig do
          params(
            bank:
              T.nilable(
                WhopSDK::Models::DepositCreateResponse::Methods::Bank::OrHash
              ),
            crypto:
              T::Array[
                WhopSDK::Models::DepositCreateResponse::Methods::Crypto::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Bank deposit details. Only present when bank deposits are active for the
          # destination account.
          bank:,
          # Crypto networks available for this deposit, each with its on-chain deposit
          # address and the tokens accepted on that network.
          crypto:
        )
        end

        sig do
          override.returns(
            {
              bank:
                T.nilable(
                  WhopSDK::Models::DepositCreateResponse::Methods::Bank
                ),
              crypto:
                T::Array[
                  WhopSDK::Models::DepositCreateResponse::Methods::Crypto
                ]
            }
          )
        end
        def to_hash
        end

        class Bank < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::DepositCreateResponse::Methods::Bank,
                WhopSDK::Internal::AnyHash
              )
            end

          # Bank transfer currencies available for this deposit.
          sig do
            returns(
              T::Array[
                WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency
              ]
            )
          end
          attr_accessor :currencies

          # Bank deposit details. Only present when bank deposits are active for the
          # destination account.
          sig do
            params(
              currencies:
                T::Array[
                  WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Bank transfer currencies available for this deposit.
            currencies:
          )
          end

          sig do
            override.returns(
              {
                currencies:
                  T::Array[
                    WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency
                  ]
              }
            )
          end
          def to_hash
          end

          class Currency < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::DepositCreateResponse::Methods::Bank::Currency,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Bank account number for deposits in this currency.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_number

            # Currency supported by these bank instructions.
            sig { returns(String) }
            attr_accessor :currency

            # Receiving bank name.
            sig { returns(T.nilable(String)) }
            attr_accessor :deposit_bank_name

            # Beneficiary name to use for transfer.
            sig { returns(T.nilable(String)) }
            attr_accessor :deposit_beneficiary_name

            # Reference to include with bank transfer.
            sig { returns(T.nilable(String)) }
            attr_accessor :deposit_reference

            # Active deposit rails for this currency, such as `ach`, `wire`, or `sepa`.
            sig { returns(T::Array[String]) }
            attr_accessor :rails

            # Bank routing number for deposits in this currency.
            sig { returns(T.nilable(String)) }
            attr_accessor :routing_number

            sig do
              params(
                account_number: T.nilable(String),
                currency: String,
                deposit_bank_name: T.nilable(String),
                deposit_beneficiary_name: T.nilable(String),
                deposit_reference: T.nilable(String),
                rails: T::Array[String],
                routing_number: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Bank account number for deposits in this currency.
              account_number:,
              # Currency supported by these bank instructions.
              currency:,
              # Receiving bank name.
              deposit_bank_name:,
              # Beneficiary name to use for transfer.
              deposit_beneficiary_name:,
              # Reference to include with bank transfer.
              deposit_reference:,
              # Active deposit rails for this currency, such as `ach`, `wire`, or `sepa`.
              rails:,
              # Bank routing number for deposits in this currency.
              routing_number:
            )
            end

            sig do
              override.returns(
                {
                  account_number: T.nilable(String),
                  currency: String,
                  deposit_bank_name: T.nilable(String),
                  deposit_beneficiary_name: T.nilable(String),
                  deposit_reference: T.nilable(String),
                  rails: T::Array[String],
                  routing_number: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        class Crypto < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::DepositCreateResponse::Methods::Crypto,
                WhopSDK::Internal::AnyHash
              )
            end

          # Address to send funds to on this network. Null when the provider has not issued
          # one yet.
          sig { returns(T.nilable(String)) }
          attr_accessor :deposit_address

          # Network icon URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :icon_url

          # Network display name, such as `Ethereum` or `Solana`.
          sig { returns(String) }
          attr_accessor :name

          # Tokens accepted for deposit on this network.
          sig do
            returns(
              T::Array[
                WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency
              ]
            )
          end
          attr_accessor :supported_currencies

          sig do
            params(
              deposit_address: T.nilable(String),
              icon_url: T.nilable(String),
              name: String,
              supported_currencies:
                T::Array[
                  WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Address to send funds to on this network. Null when the provider has not issued
            # one yet.
            deposit_address:,
            # Network icon URL.
            icon_url:,
            # Network display name, such as `Ethereum` or `Solana`.
            name:,
            # Tokens accepted for deposit on this network.
            supported_currencies:
          )
          end

          sig do
            override.returns(
              {
                deposit_address: T.nilable(String),
                icon_url: T.nilable(String),
                name: String,
                supported_currencies:
                  T::Array[
                    WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency
                  ]
              }
            )
          end
          def to_hash
          end

          class SupportedCurrency < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::DepositCreateResponse::Methods::Crypto::SupportedCurrency,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Token icon URL. Null when no icon is available.
            sig { returns(T.nilable(String)) }
            attr_accessor :icon_url

            # Token symbol, such as `USDC`.
            sig { returns(String) }
            attr_accessor :name

            sig do
              params(icon_url: T.nilable(String), name: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Token icon URL. Null when no icon is available.
              icon_url:,
              # Token symbol, such as `USDC`.
              name:
            )
            end

            sig do
              override.returns({ icon_url: T.nilable(String), name: String })
            end
            def to_hash
            end
          end
        end
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::DepositCreateResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(
            :deposit,
            WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
