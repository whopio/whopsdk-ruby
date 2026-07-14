# typed: strong

module WhopSDK
  module Models
    class EventListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::EventListResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :event_id

      sig { returns(String) }
      attr_accessor :event_name

      sig { returns(Integer) }
      attr_accessor :event_time

      sig { returns(T.nilable(WhopSDK::Models::EventListResponse::Context)) }
      attr_reader :context

      sig do
        params(
          context:
            T.nilable(WhopSDK::Models::EventListResponse::Context::OrHash)
        ).void
      end
      attr_writer :context

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      sig { returns(T.nilable(String)) }
      attr_accessor :path

      sig do
        returns(
          T.nilable(T::Array[WhopSDK::Models::EventListResponse::Question])
        )
      end
      attr_accessor :questions

      sig { returns(T.nilable(String)) }
      attr_accessor :referrer_url

      sig { returns(T.nilable(Float)) }
      attr_accessor :total_usd_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig { returns(T.nilable(WhopSDK::Models::EventListResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::EventListResponse::User::OrHash)
        ).void
      end
      attr_writer :user

      sig { returns(T.nilable(Float)) }
      attr_accessor :value

      sig do
        params(
          id: String,
          event_id: String,
          event_name: String,
          event_time: Integer,
          context:
            T.nilable(WhopSDK::Models::EventListResponse::Context::OrHash),
          currency: T.nilable(String),
          custom_name: T.nilable(String),
          path: T.nilable(String),
          questions:
            T.nilable(
              T::Array[WhopSDK::Models::EventListResponse::Question::OrHash]
            ),
          referrer_url: T.nilable(String),
          total_usd_amount: T.nilable(Float),
          url: T.nilable(String),
          user: T.nilable(WhopSDK::Models::EventListResponse::User::OrHash),
          value: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        event_id:,
        event_name:,
        event_time:,
        context: nil,
        currency: nil,
        custom_name: nil,
        path: nil,
        questions: nil,
        referrer_url: nil,
        total_usd_amount: nil,
        url: nil,
        user: nil,
        value: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_id: String,
            event_name: String,
            event_time: Integer,
            context: T.nilable(WhopSDK::Models::EventListResponse::Context),
            currency: T.nilable(String),
            custom_name: T.nilable(String),
            path: T.nilable(String),
            questions:
              T.nilable(T::Array[WhopSDK::Models::EventListResponse::Question]),
            referrer_url: T.nilable(String),
            total_usd_amount: T.nilable(Float),
            url: T.nilable(String),
            user: T.nilable(WhopSDK::Models::EventListResponse::User),
            value: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      class Context < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::EventListResponse::Context,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :ad_campaign_id

        sig { returns(T.nilable(String)) }
        attr_accessor :ad_id

        sig { returns(T.nilable(String)) }
        attr_accessor :ad_set_id

        sig { returns(T.nilable(String)) }
        attr_accessor :utm_campaign

        sig { returns(T.nilable(String)) }
        attr_accessor :utm_content

        sig { returns(T.nilable(String)) }
        attr_accessor :utm_medium

        sig { returns(T.nilable(String)) }
        attr_accessor :utm_source

        sig { returns(T.nilable(String)) }
        attr_accessor :utm_term

        sig do
          params(
            ad_campaign_id: T.nilable(String),
            ad_id: T.nilable(String),
            ad_set_id: T.nilable(String),
            utm_campaign: T.nilable(String),
            utm_content: T.nilable(String),
            utm_medium: T.nilable(String),
            utm_source: T.nilable(String),
            utm_term: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          ad_campaign_id: nil,
          ad_id: nil,
          ad_set_id: nil,
          utm_campaign: nil,
          utm_content: nil,
          utm_medium: nil,
          utm_source: nil,
          utm_term: nil
        )
        end

        sig do
          override.returns(
            {
              ad_campaign_id: T.nilable(String),
              ad_id: T.nilable(String),
              ad_set_id: T.nilable(String),
              utm_campaign: T.nilable(String),
              utm_content: T.nilable(String),
              utm_medium: T.nilable(String),
              utm_source: T.nilable(String),
              utm_term: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Question < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::EventListResponse::Question,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :answer

        sig { returns(T.nilable(String)) }
        attr_accessor :key

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :options

        sig { returns(T.nilable(String)) }
        attr_accessor :question

        sig { returns(T.nilable(String)) }
        attr_accessor :type

        sig do
          params(
            id: T.nilable(String),
            answer: T.nilable(String),
            key: T.nilable(String),
            options: T.nilable(T::Array[String]),
            question: T.nilable(String),
            type: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          answer: nil,
          key: nil,
          options: nil,
          question: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              answer: T.nilable(String),
              key: T.nilable(String),
              options: T.nilable(T::Array[String]),
              question: T.nilable(String),
              type: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::EventListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :city

        sig { returns(T.nilable(String)) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        sig { returns(T.nilable(String)) }
        attr_accessor :state

        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            email: T.nilable(String),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            name: T.nilable(String),
            phone: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          city: nil,
          country: nil,
          email: nil,
          first_name: nil,
          last_name: nil,
          name: nil,
          phone: nil,
          state: nil
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              email: T.nilable(String),
              first_name: T.nilable(String),
              last_name: T.nilable(String),
              name: T.nilable(String),
              phone: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
