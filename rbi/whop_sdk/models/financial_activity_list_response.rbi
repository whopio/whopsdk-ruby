# typed: strong

module WhopSDK
  module Models
    class FinancialActivityListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::FinancialActivityListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[WhopSDK::Models::FinancialActivityListResponse::Data])
      end
      attr_accessor :data

      sig { returns(WhopSDK::Models::FinancialActivityListResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info:
            WhopSDK::Models::FinancialActivityListResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      sig do
        params(
          data:
            T::Array[
              WhopSDK::Models::FinancialActivityListResponse::Data::OrHash
            ],
          page_info:
            WhopSDK::Models::FinancialActivityListResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, page_info:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[WhopSDK::Models::FinancialActivityListResponse::Data],
            page_info: WhopSDK::Models::FinancialActivityListResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::FinancialActivityListResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Signed amount in the currency's smallest precision units.
        sig { returns(String) }
        attr_accessor :amount

        sig do
          returns(
            WhopSDK::Models::FinancialActivityListResponse::Data::Currency
          )
        end
        attr_reader :currency

        sig do
          params(
            currency:
              WhopSDK::Models::FinancialActivityListResponse::Data::Currency::OrHash
          ).void
        end
        attr_writer :currency

        sig { returns(String) }
        attr_accessor :line_type

        sig do
          returns(
            WhopSDK::Models::FinancialActivityListResponse::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        sig { returns(Time) }
        attr_accessor :posted_at

        sig do
          returns(
            T.nilable(
              WhopSDK::Models::FinancialActivityListResponse::Data::Resource::Variants
            )
          )
        end
        attr_accessor :resource

        sig do
          returns(
            T.nilable(
              WhopSDK::Models::FinancialActivityListResponse::Data::Source
            )
          )
        end
        attr_reader :source

        sig do
          params(
            source:
              T.nilable(
                WhopSDK::Models::FinancialActivityListResponse::Data::Source::OrHash
              )
          ).void
        end
        attr_writer :source

        sig do
          params(
            id: String,
            amount: String,
            currency:
              WhopSDK::Models::FinancialActivityListResponse::Data::Currency::OrHash,
            line_type: String,
            object:
              WhopSDK::Models::FinancialActivityListResponse::Data::Object::OrSymbol,
            posted_at: Time,
            resource:
              T.nilable(
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::OrHash,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::OrHash,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::OrHash,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::OrHash,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::OrHash
                )
              ),
            source:
              T.nilable(
                WhopSDK::Models::FinancialActivityListResponse::Data::Source::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Signed amount in the currency's smallest precision units.
          amount:,
          currency:,
          line_type:,
          object:,
          posted_at:,
          resource:,
          source:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              currency:
                WhopSDK::Models::FinancialActivityListResponse::Data::Currency,
              line_type: String,
              object:
                WhopSDK::Models::FinancialActivityListResponse::Data::Object::TaggedSymbol,
              posted_at: Time,
              resource:
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::Variants
                ),
              source:
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Source
                )
            }
          )
        end
        def to_hash
        end

        class Currency < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Currency,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :code

          # Precision factor for the currency, for example 100000000 for USD.
          sig { returns(String) }
          attr_accessor :precision

          sig do
            params(code: String, precision: String).returns(T.attached_class)
          end
          def self.new(
            code:,
            # Precision factor for the currency, for example 100000000 for USD.
            precision:
          )
          end

          sig { override.returns({ code: String, precision: String }) }
          def to_hash
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::FinancialActivityListResponse::Data::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEDGER_ACTIVITY =
            T.let(
              :ledger_activity,
              WhopSDK::Models::FinancialActivityListResponse::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::FinancialActivityListResponse::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Resource
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4
              )
            end

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(String)) }
            attr_accessor :logo_url

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig { returns(T.nilable(String)) }
            attr_accessor :route

            sig { returns(T.nilable(String)) }
            attr_accessor :title

            sig do
              params(
                id: String,
                logo_url: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object::OrSymbol,
                route: T.nilable(String),
                title: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(id:, logo_url:, object:, route:, title:)
            end

            sig do
              override.returns(
                {
                  id: String,
                  logo_url: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object::TaggedSymbol,
                  route: T.nilable(String),
                  title: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            module Object
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCOUNT =
                T.let(
                  :account,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig { returns(T.nilable(String)) }
            attr_accessor :profile_picture_url

            sig { returns(T.nilable(String)) }
            attr_accessor :username

            sig do
              params(
                id: String,
                name: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object::OrSymbol,
                profile_picture_url: T.nilable(String),
                username: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(id:, name:, object:, profile_picture_url:, username:)
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object::TaggedSymbol,
                  profile_picture_url: T.nilable(String),
                  username: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            module Object
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember2 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::Variants
                )
              )
            end
            attr_accessor :owner

            sig do
              params(
                id: String,
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::OrSymbol,
                owner:
                  T.nilable(
                    T.any(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::OrHash,
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::OrHash
                    )
                  )
              ).returns(T.attached_class)
            end
            def self.new(id:, object:, owner:)
            end

            sig do
              override.returns(
                {
                  id: String,
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::TaggedSymbol,
                  owner:
                    T.nilable(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::Variants
                    )
                }
              )
            end
            def to_hash
            end

            module Object
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LEDGER_ACCOUNT =
                T.let(
                  :ledger_account,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Owner
              extend WhopSDK::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0,
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1
                  )
                end

              class UnionMember0 < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(T.nilable(String)) }
                attr_accessor :logo_url

                sig do
                  returns(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object::TaggedSymbol
                  )
                end
                attr_accessor :object

                sig { returns(T.nilable(String)) }
                attr_accessor :route

                sig { returns(T.nilable(String)) }
                attr_accessor :title

                sig do
                  params(
                    id: String,
                    logo_url: T.nilable(String),
                    object:
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object::OrSymbol,
                    route: T.nilable(String),
                    title: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(id:, logo_url:, object:, route:, title:)
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      logo_url: T.nilable(String),
                      object:
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object::TaggedSymbol,
                      route: T.nilable(String),
                      title: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                module Object
                  extend WhopSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ACCOUNT =
                    T.let(
                      :account,
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnionMember1 < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(T.nilable(String)) }
                attr_accessor :name

                sig do
                  returns(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object::TaggedSymbol
                  )
                end
                attr_accessor :object

                sig { returns(T.nilable(String)) }
                attr_accessor :profile_picture_url

                sig { returns(T.nilable(String)) }
                attr_accessor :username

                sig do
                  params(
                    id: String,
                    name: T.nilable(String),
                    object:
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object::OrSymbol,
                    profile_picture_url: T.nilable(String),
                    username: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  id:,
                  name:,
                  object:,
                  profile_picture_url:,
                  username:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      name: T.nilable(String),
                      object:
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object::TaggedSymbol,
                      profile_picture_url: T.nilable(String),
                      username: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                module Object
                  extend WhopSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USER =
                    T.let(
                      :user,
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          class UnionMember3 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank
                )
              )
            end
            attr_reader :bank

            sig do
              params(
                bank:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank::OrHash
                  )
              ).void
            end
            attr_writer :bank

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card
                )
              )
            end
            attr_reader :card

            sig do
              params(
                card:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card::OrHash
                  )
              ).void
            end
            attr_writer :card

            sig { returns(T.nilable(String)) }
            attr_accessor :email_identifier

            sig { returns(T.nilable(String)) }
            attr_accessor :gateway_type

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_type

            sig do
              params(
                id: String,
                bank:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank::OrHash
                  ),
                card:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card::OrHash
                  ),
                email_identifier: T.nilable(String),
                gateway_type: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::OrSymbol,
                payment_method_type: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              bank:,
              card:,
              email_identifier:,
              gateway_type:,
              object:,
              payment_method_type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  bank:
                    T.nilable(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank
                    ),
                  card:
                    T.nilable(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card
                    ),
                  email_identifier: T.nilable(String),
                  gateway_type: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::TaggedSymbol,
                  payment_method_type: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Bank < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank,
                    WhopSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :account_name

              sig { returns(T.nilable(String)) }
              attr_accessor :account_type

              sig { returns(T.nilable(String)) }
              attr_accessor :bank_name

              sig { returns(T.nilable(String)) }
              attr_accessor :last4

              sig do
                params(
                  account_name: T.nilable(String),
                  account_type: T.nilable(String),
                  bank_name: T.nilable(String),
                  last4: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(account_name:, account_type:, bank_name:, last4:)
              end

              sig do
                override.returns(
                  {
                    account_name: T.nilable(String),
                    account_type: T.nilable(String),
                    bank_name: T.nilable(String),
                    last4: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Card < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card,
                    WhopSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :brand

              sig { returns(T.nilable(Integer)) }
              attr_accessor :exp_month

              sig { returns(T.nilable(Integer)) }
              attr_accessor :exp_year

              sig { returns(T.nilable(String)) }
              attr_accessor :last4

              sig do
                params(
                  brand: T.nilable(String),
                  exp_month: T.nilable(Integer),
                  exp_year: T.nilable(Integer),
                  last4: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(brand:, exp_month:, exp_year:, last4:)
              end

              sig do
                override.returns(
                  {
                    brand: T.nilable(String),
                    exp_month: T.nilable(Integer),
                    exp_year: T.nilable(Integer),
                    last4: T.nilable(String)
                  }
                )
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYMENT_METHOD =
                T.let(
                  :payment_method,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember4 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(String)) }
            attr_accessor :account_reference

            sig { returns(T.nilable(String)) }
            attr_accessor :destination_currency_code

            sig { returns(T.nilable(String)) }
            attr_accessor :institution_name

            sig { returns(T.nilable(String)) }
            attr_accessor :nickname

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig { returns(T.nilable(String)) }
            attr_accessor :provider

            sig do
              params(
                id: String,
                account_reference: T.nilable(String),
                destination_currency_code: T.nilable(String),
                institution_name: T.nilable(String),
                nickname: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::OrSymbol,
                provider: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              account_reference:,
              destination_currency_code:,
              institution_name:,
              nickname:,
              object:,
              provider:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  account_reference: T.nilable(String),
                  destination_currency_code: T.nilable(String),
                  institution_name: T.nilable(String),
                  nickname: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::TaggedSymbol,
                  provider: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            module Object
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYOUT_METHOD =
                T.let(
                  :payout_method,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Source < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Source,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :object

          sig { params(id: String, object: String).returns(T.attached_class) }
          def self.new(id:, object:)
          end

          sig { override.returns({ id: String, object: String }) }
          def to_hash
          end
        end
      end

      class PageInfo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::FinancialActivityListResponse::PageInfo,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          end_cursor:,
          has_next_page:,
          has_previous_page:,
          start_cursor:
        )
        end

        sig do
          override.returns(
            {
              end_cursor: T.nilable(String),
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
