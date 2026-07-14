# typed: strong

module WhopSDK
  module Models
    class PersonRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PersonRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(WhopSDK::Models::PersonRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::Models::PersonRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: WhopSDK::Models::PersonRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: WhopSDK::Models::PersonRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PersonRetrieveResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(Integer) }
        attr_accessor :first_seen_at

        sig { returns(Integer) }
        attr_accessor :last_seen_at

        sig { returns(String) }
        attr_accessor :person_id

        sig { returns(Integer) }
        attr_accessor :purchase_count

        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::Models::PersonRetrieveResponse::Data::AdSet]
            )
          )
        end
        attr_reader :ad_sets

        sig do
          params(
            ad_sets:
              T::Array[
                WhopSDK::Models::PersonRetrieveResponse::Data::AdSet::OrHash
              ]
          ).void
        end
        attr_writer :ad_sets

        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::Models::PersonRetrieveResponse::Data::Ad]
            )
          )
        end
        attr_reader :ads

        sig do
          params(
            ads:
              T::Array[
                WhopSDK::Models::PersonRetrieveResponse::Data::Ad::OrHash
              ]
          ).void
        end
        attr_writer :ads

        sig { returns(T.nilable(Float)) }
        attr_reader :aov

        sig { params(aov: Float).void }
        attr_writer :aov

        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::Models::PersonRetrieveResponse::Data::Campaign]
            )
          )
        end
        attr_reader :campaigns

        sig do
          params(
            campaigns:
              T::Array[
                WhopSDK::Models::PersonRetrieveResponse::Data::Campaign::OrHash
              ]
          ).void
        end
        attr_writer :campaigns

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_failed_payment

        sig { params(has_failed_payment: T::Boolean).void }
        attr_writer :has_failed_payment

        sig { returns(T.nilable(Float)) }
        attr_reader :ltv

        sig { params(ltv: Float).void }
        attr_writer :ltv

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        sig do
          params(
            id: String,
            account_id: String,
            first_seen_at: Integer,
            last_seen_at: Integer,
            person_id: String,
            purchase_count: Integer,
            ad_sets:
              T::Array[
                WhopSDK::Models::PersonRetrieveResponse::Data::AdSet::OrHash
              ],
            ads:
              T::Array[
                WhopSDK::Models::PersonRetrieveResponse::Data::Ad::OrHash
              ],
            aov: Float,
            campaigns:
              T::Array[
                WhopSDK::Models::PersonRetrieveResponse::Data::Campaign::OrHash
              ],
            email: T.nilable(String),
            has_failed_payment: T::Boolean,
            ltv: Float,
            name: T.nilable(String),
            phone: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          account_id:,
          first_seen_at:,
          last_seen_at:,
          person_id:,
          purchase_count:,
          ad_sets: nil,
          ads: nil,
          aov: nil,
          campaigns: nil,
          email: nil,
          has_failed_payment: nil,
          ltv: nil,
          name: nil,
          phone: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_id: String,
              first_seen_at: Integer,
              last_seen_at: Integer,
              person_id: String,
              purchase_count: Integer,
              ad_sets:
                T::Array[WhopSDK::Models::PersonRetrieveResponse::Data::AdSet],
              ads: T::Array[WhopSDK::Models::PersonRetrieveResponse::Data::Ad],
              aov: Float,
              campaigns:
                T::Array[
                  WhopSDK::Models::PersonRetrieveResponse::Data::Campaign
                ],
              email: T.nilable(String),
              has_failed_payment: T::Boolean,
              ltv: Float,
              name: T.nilable(String),
              phone: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class AdSet < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PersonRetrieveResponse::Data::AdSet,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :thumbnail_url

          sig do
            params(
              id: String,
              name: T.nilable(String),
              thumbnail_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, name: nil, thumbnail_url: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                thumbnail_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Ad < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PersonRetrieveResponse::Data::Ad,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :thumbnail_url

          sig do
            params(
              id: String,
              name: T.nilable(String),
              thumbnail_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, name: nil, thumbnail_url: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                thumbnail_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Campaign < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PersonRetrieveResponse::Data::Campaign,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :thumbnail_url

          sig do
            params(
              id: String,
              name: T.nilable(String),
              thumbnail_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, name: nil, thumbnail_url: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                thumbnail_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
