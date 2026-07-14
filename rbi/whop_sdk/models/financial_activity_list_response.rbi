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

        # Ledger activity ID.
        sig { returns(String) }
        attr_accessor :id

        # Signed amount in the currency's smallest precision units.
        sig { returns(String) }
        attr_accessor :amount

        # ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
        # the posted time for already-settled funds, or 00:00:00 UTC on the scheduled
        # release date for pending funds. Present only on inflows entering the balance
        # (payments, top-ups, incoming transfers/affiliate); null on withdrawals, refunds,
        # disputes and on-chain rows. The available_after/before filters window on its UTC
        # settlement date.
        sig { returns(T.nilable(Time)) }
        attr_accessor :available_at

        # When the activity record was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # Currency for this ledger activity.
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

        # Type of ledger activity.
        sig { returns(String) }
        attr_accessor :line_type

        sig do
          returns(
            WhopSDK::Models::FinancialActivityListResponse::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # When the activity posted to the ledger.
        sig { returns(Time) }
        attr_accessor :posted_at

        # Resource associated with this ledger activity.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::FinancialActivityListResponse::Data::Resource::Variants
            )
          )
        end
        attr_accessor :resource

        # Source of this ledger activity.
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

        # The viewer account that owns this row's ledger. Present only when the response
        # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::FinancialActivityListResponse::Data::Account::Variants
            )
          )
        end
        attr_reader :account

        sig do
          params(
            account:
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::OrHash,
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::OrHash
              )
          ).void
        end
        attr_writer :account

        # The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
        # the response aggregates owned accounts (include_owned_accounts=true); omitted
        # otherwise. Pair it with `account` to scope drawers and dashboard links to the
        # owning business.
        sig { returns(T.nilable(String)) }
        attr_accessor :ledger_account_id

        sig do
          params(
            id: String,
            amount: String,
            available_at: T.nilable(Time),
            created_at: T.nilable(Time),
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
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::OrHash,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::OrHash,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::OrHash
                )
              ),
            source:
              T.nilable(
                WhopSDK::Models::FinancialActivityListResponse::Data::Source::OrHash
              ),
            account:
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::OrHash,
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::OrHash
              ),
            ledger_account_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Ledger activity ID.
          id:,
          # Signed amount in the currency's smallest precision units.
          amount:,
          # ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
          # the posted time for already-settled funds, or 00:00:00 UTC on the scheduled
          # release date for pending funds. Present only on inflows entering the balance
          # (payments, top-ups, incoming transfers/affiliate); null on withdrawals, refunds,
          # disputes and on-chain rows. The available_after/before filters window on its UTC
          # settlement date.
          available_at:,
          # When the activity record was created.
          created_at:,
          # Currency for this ledger activity.
          currency:,
          # Type of ledger activity.
          line_type:,
          object:,
          # When the activity posted to the ledger.
          posted_at:,
          # Resource associated with this ledger activity.
          resource:,
          # Source of this ledger activity.
          source:,
          # The viewer account that owns this row's ledger. Present only when the response
          # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
          account: nil,
          # The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
          # the response aggregates owned accounts (include_owned_accounts=true); omitted
          # otherwise. Pair it with `account` to scope drawers and dashboard links to the
          # owning business.
          ledger_account_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              available_at: T.nilable(Time),
              created_at: T.nilable(Time),
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
                ),
              account:
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::Variants,
              ledger_account_id: T.nilable(String)
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

          # Currency code.
          sig { returns(String) }
          attr_accessor :code

          # Precision factor for the currency, for example `100000000` for USD.
          sig { returns(String) }
          attr_accessor :precision

          # Currency for this ledger activity.
          sig do
            params(code: String, precision: String).returns(T.attached_class)
          end
          def self.new(
            # Currency code.
            code:,
            # Precision factor for the currency, for example `100000000` for USD.
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

        # Resource associated with this ledger activity.
        module Resource
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5,
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6
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

            # Account ID.
            sig { returns(String) }
            attr_accessor :id

            # Account logo URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :logo_url

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Account route.
            sig { returns(T.nilable(String)) }
            attr_accessor :route

            # Account display name.
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
            def self.new(
              # Account ID.
              id:,
              # Account logo URL.
              logo_url:,
              object:,
              # Account route.
              route:,
              # Account display name.
              title:
            )
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

            # User ID.
            sig { returns(String) }
            attr_accessor :id

            # User display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # User profile image URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :profile_picture_url

            # User's username.
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
            def self.new(
              # User ID.
              id:,
              # User display name.
              name:,
              object:,
              # User profile image URL.
              profile_picture_url:,
              # User's username.
              username:
            )
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

            # Bounty ID.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Bounty lifecycle status.
            sig { returns(String) }
            attr_accessor :status

            # Bounty title.
            sig { returns(String) }
            attr_accessor :title

            sig do
              params(
                id: String,
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::OrSymbol,
                status: String,
                title: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Bounty ID.
              id:,
              object:,
              # Bounty lifecycle status.
              status:,
              # Bounty title.
              title:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object::TaggedSymbol,
                  status: String,
                  title: String
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

              BOUNTY =
                T.let(
                  :bounty,
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
          end

          class UnionMember3 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Ledger account ID.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::Variants
                )
              )
            end
            attr_accessor :owner

            sig do
              params(
                id: String,
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::OrSymbol,
                owner:
                  T.nilable(
                    T.any(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::OrHash,
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::OrHash
                    )
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Ledger account ID.
              id:,
              object:,
              owner:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object::TaggedSymbol,
                  owner:
                    T.nilable(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::Variants
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LEDGER_ACCOUNT =
                T.let(
                  :ledger_account,
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

            module Owner
              extend WhopSDK::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0,
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1
                  )
                end

              class UnionMember0 < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Account ID.
                sig { returns(String) }
                attr_accessor :id

                # Account logo URL.
                sig { returns(T.nilable(String)) }
                attr_accessor :logo_url

                sig do
                  returns(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol
                  )
                end
                attr_accessor :object

                # Account route.
                sig { returns(T.nilable(String)) }
                attr_accessor :route

                # Account display name.
                sig { returns(T.nilable(String)) }
                attr_accessor :title

                sig do
                  params(
                    id: String,
                    logo_url: T.nilable(String),
                    object:
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object::OrSymbol,
                    route: T.nilable(String),
                    title: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Account ID.
                  id:,
                  # Account logo URL.
                  logo_url:,
                  object:,
                  # Account route.
                  route:,
                  # Account display name.
                  title:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      logo_url: T.nilable(String),
                      object:
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol,
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
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ACCOUNT =
                    T.let(
                      :account,
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object::TaggedSymbol
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
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # User ID.
                sig { returns(String) }
                attr_accessor :id

                # User display name.
                sig { returns(T.nilable(String)) }
                attr_accessor :name

                sig do
                  returns(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol
                  )
                end
                attr_accessor :object

                # User profile image URL.
                sig { returns(T.nilable(String)) }
                attr_accessor :profile_picture_url

                # User's username.
                sig { returns(T.nilable(String)) }
                attr_accessor :username

                sig do
                  params(
                    id: String,
                    name: T.nilable(String),
                    object:
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object::OrSymbol,
                    profile_picture_url: T.nilable(String),
                    username: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # User ID.
                  id:,
                  # User display name.
                  name:,
                  object:,
                  # User profile image URL.
                  profile_picture_url:,
                  # User's username.
                  username:
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      name: T.nilable(String),
                      object:
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol,
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
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USER =
                    T.let(
                      :user,
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object::TaggedSymbol
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::Variants
                  ]
                )
              end
              def self.variants
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

            # Payment method ID.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank
                )
              )
            end
            attr_reader :bank

            sig do
              params(
                bank:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank::OrHash
                  )
              ).void
            end
            attr_writer :bank

            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card
                )
              )
            end
            attr_reader :card

            sig do
              params(
                card:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card::OrHash
                  )
              ).void
            end
            attr_writer :card

            # Email identifier for email-based payment methods.
            sig { returns(T.nilable(String)) }
            attr_accessor :email_identifier

            # Payment gateway type.
            sig { returns(T.nilable(String)) }
            attr_accessor :gateway_type

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Payment method type.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_type

            sig do
              params(
                id: String,
                bank:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank::OrHash
                  ),
                card:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card::OrHash
                  ),
                email_identifier: T.nilable(String),
                gateway_type: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::OrSymbol,
                payment_method_type: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Payment method ID.
              id:,
              bank:,
              card:,
              # Email identifier for email-based payment methods.
              email_identifier:,
              # Payment gateway type.
              gateway_type:,
              object:,
              # Payment method type.
              payment_method_type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  bank:
                    T.nilable(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank
                    ),
                  card:
                    T.nilable(
                      WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card
                    ),
                  email_identifier: T.nilable(String),
                  gateway_type: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object::TaggedSymbol,
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Bank account holder name.
              sig { returns(T.nilable(String)) }
              attr_accessor :account_name

              # Bank account type.
              sig { returns(T.nilable(String)) }
              attr_accessor :account_type

              # Bank name.
              sig { returns(T.nilable(String)) }
              attr_accessor :bank_name

              # Last four digits of the bank account.
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
              def self.new(
                # Bank account holder name.
                account_name:,
                # Bank account type.
                account_type:,
                # Bank name.
                bank_name:,
                # Last four digits of the bank account.
                last4:
              )
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Card brand.
              sig { returns(T.nilable(String)) }
              attr_accessor :brand

              # Card expiration month.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :exp_month

              # Card expiration year.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :exp_year

              # Last four digits of the card.
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
              def self.new(
                # Card brand.
                brand:,
                # Card expiration month.
                exp_month:,
                # Card expiration year.
                exp_year:,
                # Last four digits of the card.
                last4:
              )
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYMENT_METHOD =
                T.let(
                  :payment_method,
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

          class UnionMember5 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Payout method ID.
            sig { returns(String) }
            attr_accessor :id

            # Masked account reference.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_reference

            # Destination currency code.
            sig { returns(T.nilable(String)) }
            attr_accessor :destination_currency_code

            # Payout institution name.
            sig { returns(T.nilable(String)) }
            attr_accessor :institution_name

            # Payout method nickname.
            sig { returns(T.nilable(String)) }
            attr_accessor :nickname

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Payout provider.
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
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object::OrSymbol,
                provider: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Payout method ID.
              id:,
              # Masked account reference.
              account_reference:,
              # Destination currency code.
              destination_currency_code:,
              # Payout institution name.
              institution_name:,
              # Payout method nickname.
              nickname:,
              object:,
              # Payout provider.
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object::TaggedSymbol,
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYOUT_METHOD =
                T.let(
                  :payout_method,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember6 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Card transaction ID.
            sig { returns(String) }
            attr_accessor :id

            # ISO 8601 timestamp the transaction was authorized.
            sig { returns(T.nilable(Time)) }
            attr_accessor :authorized_at

            # Identifier of the card that the transaction was charged to.
            sig { returns(T.nilable(String)) }
            attr_accessor :card_id

            # Cashback earned on this transaction as a USD decimal string. Zero for declined
            # or ineligible transactions; null when cashback has not been computed yet.
            sig { returns(T.nilable(String)) }
            attr_accessor :cashback_usd

            # Reason the transaction was declined (when status is declined).
            sig { returns(T.nilable(String)) }
            attr_accessor :declined_reason

            # Amount the merchant charged in their local currency, as a decimal string. Pair
            # with local_currency.
            sig { returns(T.nilable(String)) }
            attr_accessor :local_amount

            # ISO 4217 currency code of the merchant-charged amount in local_amount.
            sig { returns(T.nilable(String)) }
            attr_accessor :local_currency

            # Merchant category.
            sig { returns(T.nilable(String)) }
            attr_accessor :merchant_category

            # Merchant icon URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :merchant_icon_url

            # Merchant display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :merchant_name

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # ISO 8601 timestamp the transaction was settled by the card network.
            sig { returns(T.nilable(Time)) }
            attr_accessor :posted_at

            # Current card transaction status.
            sig { returns(T.nilable(String)) }
            attr_accessor :status

            # The processor-settled USD amount as a decimal string. The ledger's USDT leg is
            # posted 1:1 from this value.
            sig { returns(T.nilable(String)) }
            attr_accessor :usd_amount

            sig do
              params(
                id: String,
                authorized_at: T.nilable(Time),
                card_id: T.nilable(String),
                cashback_usd: T.nilable(String),
                declined_reason: T.nilable(String),
                local_amount: T.nilable(String),
                local_currency: T.nilable(String),
                merchant_category: T.nilable(String),
                merchant_icon_url: T.nilable(String),
                merchant_name: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object::OrSymbol,
                posted_at: T.nilable(Time),
                status: T.nilable(String),
                usd_amount: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Card transaction ID.
              id:,
              # ISO 8601 timestamp the transaction was authorized.
              authorized_at:,
              # Identifier of the card that the transaction was charged to.
              card_id:,
              # Cashback earned on this transaction as a USD decimal string. Zero for declined
              # or ineligible transactions; null when cashback has not been computed yet.
              cashback_usd:,
              # Reason the transaction was declined (when status is declined).
              declined_reason:,
              # Amount the merchant charged in their local currency, as a decimal string. Pair
              # with local_currency.
              local_amount:,
              # ISO 4217 currency code of the merchant-charged amount in local_amount.
              local_currency:,
              # Merchant category.
              merchant_category:,
              # Merchant icon URL.
              merchant_icon_url:,
              # Merchant display name.
              merchant_name:,
              object:,
              # ISO 8601 timestamp the transaction was settled by the card network.
              posted_at:,
              # Current card transaction status.
              status:,
              # The processor-settled USD amount as a decimal string. The ledger's USDT leg is
              # posted 1:1 from this value.
              usd_amount:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  authorized_at: T.nilable(Time),
                  card_id: T.nilable(String),
                  cashback_usd: T.nilable(String),
                  declined_reason: T.nilable(String),
                  local_amount: T.nilable(String),
                  local_currency: T.nilable(String),
                  merchant_category: T.nilable(String),
                  merchant_icon_url: T.nilable(String),
                  merchant_name: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object::TaggedSymbol,
                  posted_at: T.nilable(Time),
                  status: T.nilable(String),
                  usd_amount: T.nilable(String)
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD_TRANSACTION =
                T.let(
                  :card_transaction,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object::TaggedSymbol
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

          # Withdrawal amount as a decimal number in the destination currency (withdrawal
          # sources only; requires payout:withdrawal:read).
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount_float

          # Chain the deposit landed on, for example plasma (onchain_transaction sources
          # only).
          sig { returns(T.nilable(String)) }
          attr_accessor :chain

          # Public claim URL for the airdrop link (airdrop_link sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :claim_url

          # Withdrawal creation time as an ISO 8601 timestamp (withdrawal sources only;
          # requires payout:withdrawal:read).
          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          # Estimated arrival as an ISO 8601 timestamp (withdrawal sources only; requires
          # payout:withdrawal:read).
          sig { returns(T.nilable(Time)) }
          attr_accessor :estimated_arrival

          # Amount converted out of from_currency as a decimal string (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :from_amount

          # Lowercase currency code converted from (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :from_currency

          # Name of the entity processing the payout (withdrawal sources only; requires
          # payout:withdrawal:read).
          sig { returns(T.nilable(String)) }
          attr_accessor :payer_name

          # Payout destination display info (withdrawal sources only).
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination
              )
            )
          end
          attr_reader :payout_destination

          sig do
            params(
              payout_destination:
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination::OrHash
                )
            ).void
          end
          attr_writer :payout_destination

          # Saved payout destination nickname (withdrawal sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :payout_token_nickname

          # Transfer reason on transfer sources, for example pool_top_up or bounty_return.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # Sender wallet address or onramp provider identifier (onchain_transaction sources
          # only).
          sig { returns(T.nilable(String)) }
          attr_accessor :sender_address

          # Lifecycle status. On withdrawal sources this is the withdrawal status (requires
          # payout:withdrawal:read); on airdrop_link sources it is the claim-link status
          # (ungated); on payment and top-up sources it is the friendly payment status such
          # as succeeded/pending/failed (ungated).
          sig { returns(T.nilable(String)) }
          attr_accessor :status

          # Amount received in to_currency as a decimal string (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :to_amount

          # Lowercase currency code converted to (swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :to_currency

          # On-chain transaction hash (onchain_transaction and swap sources only).
          sig { returns(T.nilable(String)) }
          attr_accessor :tx_hash

          # Source of this ledger activity.
          sig do
            params(
              id: String,
              object: String,
              amount_float: T.nilable(Float),
              chain: T.nilable(String),
              claim_url: T.nilable(String),
              created_at: T.nilable(Time),
              estimated_arrival: T.nilable(Time),
              from_amount: T.nilable(String),
              from_currency: T.nilable(String),
              payer_name: T.nilable(String),
              payout_destination:
                T.nilable(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination::OrHash
                ),
              payout_token_nickname: T.nilable(String),
              reason: T.nilable(String),
              sender_address: T.nilable(String),
              status: T.nilable(String),
              to_amount: T.nilable(String),
              to_currency: T.nilable(String),
              tx_hash: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            object:,
            # Withdrawal amount as a decimal number in the destination currency (withdrawal
            # sources only; requires payout:withdrawal:read).
            amount_float: nil,
            # Chain the deposit landed on, for example plasma (onchain_transaction sources
            # only).
            chain: nil,
            # Public claim URL for the airdrop link (airdrop_link sources only).
            claim_url: nil,
            # Withdrawal creation time as an ISO 8601 timestamp (withdrawal sources only;
            # requires payout:withdrawal:read).
            created_at: nil,
            # Estimated arrival as an ISO 8601 timestamp (withdrawal sources only; requires
            # payout:withdrawal:read).
            estimated_arrival: nil,
            # Amount converted out of from_currency as a decimal string (swap sources only).
            from_amount: nil,
            # Lowercase currency code converted from (swap sources only).
            from_currency: nil,
            # Name of the entity processing the payout (withdrawal sources only; requires
            # payout:withdrawal:read).
            payer_name: nil,
            # Payout destination display info (withdrawal sources only).
            payout_destination: nil,
            # Saved payout destination nickname (withdrawal sources only).
            payout_token_nickname: nil,
            # Transfer reason on transfer sources, for example pool_top_up or bounty_return.
            reason: nil,
            # Sender wallet address or onramp provider identifier (onchain_transaction sources
            # only).
            sender_address: nil,
            # Lifecycle status. On withdrawal sources this is the withdrawal status (requires
            # payout:withdrawal:read); on airdrop_link sources it is the claim-link status
            # (ungated); on payment and top-up sources it is the friendly payment status such
            # as succeeded/pending/failed (ungated).
            status: nil,
            # Amount received in to_currency as a decimal string (swap sources only).
            to_amount: nil,
            # Lowercase currency code converted to (swap sources only).
            to_currency: nil,
            # On-chain transaction hash (onchain_transaction and swap sources only).
            tx_hash: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                object: String,
                amount_float: T.nilable(Float),
                chain: T.nilable(String),
                claim_url: T.nilable(String),
                created_at: T.nilable(Time),
                estimated_arrival: T.nilable(Time),
                from_amount: T.nilable(String),
                from_currency: T.nilable(String),
                payer_name: T.nilable(String),
                payout_destination:
                  T.nilable(
                    WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination
                  ),
                payout_token_nickname: T.nilable(String),
                reason: T.nilable(String),
                sender_address: T.nilable(String),
                status: T.nilable(String),
                to_amount: T.nilable(String),
                to_currency: T.nilable(String),
                tx_hash: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class PayoutDestination < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :icon_url

            sig { returns(T.nilable(String)) }
            attr_accessor :payer_name

            # Payout destination display info (withdrawal sources only).
            sig do
              params(
                icon_url: T.nilable(String),
                payer_name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(icon_url: nil, payer_name: nil)
            end

            sig do
              override.returns(
                { icon_url: T.nilable(String), payer_name: T.nilable(String) }
              )
            end
            def to_hash
            end
          end
        end

        # The viewer account that owns this row's ledger. Present only when the response
        # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        module Account
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0,
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1
              )
            end

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Account ID.
            sig { returns(String) }
            attr_accessor :id

            # Account logo URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :logo_url

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # Account route.
            sig { returns(T.nilable(String)) }
            attr_accessor :route

            # Account display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :title

            sig do
              params(
                id: String,
                logo_url: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object::OrSymbol,
                route: T.nilable(String),
                title: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Account ID.
              id:,
              # Account logo URL.
              logo_url:,
              object:,
              # Account route.
              route:,
              # Account display name.
              title:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  logo_url: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object::TaggedSymbol,
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCOUNT =
                T.let(
                  :account,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object::TaggedSymbol
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
                  WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1,
                  WhopSDK::Internal::AnyHash
                )
              end

            # User ID.
            sig { returns(String) }
            attr_accessor :id

            # User display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              returns(
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object::TaggedSymbol
              )
            end
            attr_accessor :object

            # User profile image URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :profile_picture_url

            # User's username.
            sig { returns(T.nilable(String)) }
            attr_accessor :username

            sig do
              params(
                id: String,
                name: T.nilable(String),
                object:
                  WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object::OrSymbol,
                profile_picture_url: T.nilable(String),
                username: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # User ID.
              id:,
              # User display name.
              name:,
              object:,
              # User profile image URL.
              profile_picture_url:,
              # User's username.
              username:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: T.nilable(String),
                  object:
                    WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object::TaggedSymbol,
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
                    WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object::TaggedSymbol
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
                WhopSDK::Models::FinancialActivityListResponse::Data::Account::Variants
              ]
            )
          end
          def self.variants
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
