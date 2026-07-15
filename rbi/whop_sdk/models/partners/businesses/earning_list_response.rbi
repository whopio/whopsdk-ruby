# typed: strong

module WhopSDK
  module Models
    module Partners
      module Businesses
        class EarningListResponse < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Partners::Businesses::EarningListResponse,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # Referred account.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Account
              )
            )
          end
          attr_reader :account

          sig do
            params(
              account:
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Account::OrHash
                )
            ).void
          end
          attr_writer :account

          # Why the earning was canceled or reversed, if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :cancelation_reason

          # What the referrer earns, in USD. Null until the earning settles.
          sig { returns(T.nilable(String)) }
          attr_accessor :commission_amount_usd

          sig { returns(Time) }
          attr_accessor :created_at

          # Income and cost lines behind this earning's commission. Null for earnings
          # settled before this data was recorded.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity
                ]
              )
            )
          end
          attr_accessor :financial_activity

          sig do
            returns(
              WhopSDK::Models::Partners::Businesses::EarningListResponse::Object::TaggedSymbol
            )
          end
          attr_accessor :object

          sig { returns(T.nilable(Time)) }
          attr_accessor :payout_at

          # The referrer's share of Whop's gross profit, as a fraction (0.3 = 30%). Null
          # until the earning settles.
          sig { returns(T.nilable(Float)) }
          attr_accessor :payout_percentage

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Product
              )
            )
          end
          attr_reader :product

          sig do
            params(
              product:
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Product::OrHash
                )
            ).void
          end
          attr_writer :product

          # The resource that generated the affiliate earning.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource
              )
            )
          end
          attr_reader :resource

          sig do
            params(
              resource:
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::OrHash
                )
            ).void
          end
          attr_writer :resource

          # Whether this earning is a second-tier (grandparent) commission.
          sig { returns(T::Boolean) }
          attr_accessor :second_tier

          # Current status of the earning.
          sig do
            returns(
              WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The sale amount the commission is calculated from, in USD.
          sig { returns(String) }
          attr_accessor :transaction_amount_usd

          sig do
            params(
              id: T.nilable(String),
              account:
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Account::OrHash
                ),
              cancelation_reason: T.nilable(String),
              commission_amount_usd: T.nilable(String),
              created_at: Time,
              financial_activity:
                T.nilable(
                  T::Array[
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::OrHash
                  ]
                ),
              object:
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Object::OrSymbol,
              payout_at: T.nilable(Time),
              payout_percentage: T.nilable(Float),
              product:
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Product::OrHash
                ),
              resource:
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::OrHash
                ),
              second_tier: T::Boolean,
              status:
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::OrSymbol,
              transaction_amount_usd: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Referred account.
            account:,
            # Why the earning was canceled or reversed, if applicable.
            cancelation_reason:,
            # What the referrer earns, in USD. Null until the earning settles.
            commission_amount_usd:,
            created_at:,
            # Income and cost lines behind this earning's commission. Null for earnings
            # settled before this data was recorded.
            financial_activity:,
            object:,
            payout_at:,
            # The referrer's share of Whop's gross profit, as a fraction (0.3 = 30%). Null
            # until the earning settles.
            payout_percentage:,
            product:,
            # The resource that generated the affiliate earning.
            resource:,
            # Whether this earning is a second-tier (grandparent) commission.
            second_tier:,
            # Current status of the earning.
            status:,
            # The sale amount the commission is calculated from, in USD.
            transaction_amount_usd:
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                account:
                  T.nilable(
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Account
                  ),
                cancelation_reason: T.nilable(String),
                commission_amount_usd: T.nilable(String),
                created_at: Time,
                financial_activity:
                  T.nilable(
                    T::Array[
                      WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity
                    ]
                  ),
                object:
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Object::TaggedSymbol,
                payout_at: T.nilable(Time),
                payout_percentage: T.nilable(Float),
                product:
                  T.nilable(
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Product
                  ),
                resource:
                  T.nilable(
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource
                  ),
                second_tier: T::Boolean,
                status:
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol,
                transaction_amount_usd: String
              }
            )
          end
          def to_hash
          end

          class Account < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Account,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Referred account ID.
            sig { returns(String) }
            attr_accessor :id

            # Referred account logo URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :logo_url

            # Referred account route.
            sig { returns(String) }
            attr_accessor :route

            # Referred account display name.
            sig { returns(String) }
            attr_accessor :title

            # Referred account.
            sig do
              params(
                id: String,
                logo_url: T.nilable(String),
                route: String,
                title: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Referred account ID.
              id:,
              # Referred account logo URL.
              logo_url:,
              # Referred account route.
              route:,
              # Referred account display name.
              title:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  logo_url: T.nilable(String),
                  route: String,
                  title: String
                }
              )
            end
            def to_hash
            end
          end

          class FinancialActivity < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Line amount in its native currency.
            sig { returns(String) }
            attr_accessor :amount

            # Line amount in USD.
            sig { returns(String) }
            attr_accessor :amount_usd

            # Fee or cost category of the line.
            sig { returns(T.nilable(String)) }
            attr_accessor :category

            sig { returns(T.nilable(Time)) }
            attr_accessor :created_at

            # Currency of the native amount.
            sig { returns(String) }
            attr_accessor :currency

            # Whether the line is income Whop collected or a cost Whop paid.
            sig do
              returns(
                WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: String,
                amount_usd: String,
                category: T.nilable(String),
                created_at: T.nilable(Time),
                currency: String,
                type:
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Line amount in its native currency.
              amount:,
              # Line amount in USD.
              amount_usd:,
              # Fee or cost category of the line.
              category:,
              created_at:,
              # Currency of the native amount.
              currency:,
              # Whether the line is income Whop collected or a cost Whop paid.
              type:
            )
            end

            sig do
              override.returns(
                {
                  amount: String,
                  amount_usd: String,
                  category: T.nilable(String),
                  created_at: T.nilable(Time),
                  currency: String,
                  type:
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Whether the line is income Whop collected or a cost Whop paid.
            module Type
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCOME =
                T.let(
                  :income,
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type::TaggedSymbol
                )
              EXPENSE =
                T.let(
                  :expense,
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module Object
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Object
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PARTNER_BUSINESS_EARNING =
              T.let(
                :partner_business_earning,
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Object::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Object::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Product < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Product,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :route

            sig { returns(String) }
            attr_accessor :title

            sig do
              params(id: String, route: String, title: String).returns(
                T.attached_class
              )
            end
            def self.new(id:, route:, title:)
            end

            sig do
              override.returns({ id: String, route: String, title: String })
            end
            def to_hash
            end
          end

          class Resource < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod
                )
              )
            end
            attr_reader :alternative_payment_method

            sig do
              params(
                alternative_payment_method:
                  T.nilable(
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod::OrHash
                  )
              ).void
            end
            attr_writer :alternative_payment_method

            sig { returns(T.nilable(String)) }
            attr_accessor :brand

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :last4

            sig do
              returns(
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_type

            sig { returns(T.nilable(String)) }
            attr_accessor :processor

            # The resource that generated the affiliate earning.
            sig do
              params(
                id: String,
                alternative_payment_method:
                  T.nilable(
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod::OrHash
                  ),
                brand: T.nilable(String),
                created_at: Time,
                currency: String,
                last4: T.nilable(String),
                object:
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object::OrSymbol,
                payment_method_type: T.nilable(String),
                processor: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              alternative_payment_method:,
              brand:,
              created_at:,
              currency:,
              last4:,
              object:,
              payment_method_type:,
              processor:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  alternative_payment_method:
                    T.nilable(
                      WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod
                    ),
                  brand: T.nilable(String),
                  created_at: Time,
                  currency: String,
                  last4: T.nilable(String),
                  object:
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object::TaggedSymbol,
                  payment_method_type: T.nilable(String),
                  processor: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class AlternativePaymentMethod < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod,
                    WhopSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :image_url

              sig { returns(String) }
              attr_accessor :name

              sig do
                params(image_url: T.nilable(String), name: String).returns(
                  T.attached_class
                )
              end
              def self.new(image_url:, name:)
              end

              sig do
                override.returns({ image_url: T.nilable(String), name: String })
              end
              def to_hash
              end
            end

            module Object
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RECEIPT =
                T.let(
                  :receipt,
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Current status of the earning.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWAITING_SETTLEMENT =
              T.let(
                :awaiting_settlement,
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::Partners::Businesses::EarningListResponse::Status::TaggedSymbol
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
