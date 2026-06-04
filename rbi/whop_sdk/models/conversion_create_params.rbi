# typed: strong

module WhopSDK
  module Models
    class ConversionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ConversionCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The company to associate with this event.
      sig { returns(String) }
      attr_accessor :company_id

      # The type of event.
      sig { returns(WhopSDK::ConversionCreateParams::EventName::OrSymbol) }
      attr_accessor :event_name

      # The channel where an event originated
      sig do
        returns(
          T.nilable(WhopSDK::ConversionCreateParams::ActionSource::OrSymbol)
        )
      end
      attr_accessor :action_source

      # Tracking and attribution context.
      sig { returns(T.nilable(WhopSDK::ConversionCreateParams::Context)) }
      attr_reader :context

      sig do
        params(
          context: T.nilable(WhopSDK::ConversionCreateParams::Context::OrHash)
        ).void
      end
      attr_writer :context

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :currency

      # Custom event name when event_name is 'custom'.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      # For 'leave' events: milliseconds the visitor spent on the page.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration

      # Client-provided identifier for deduplication. Generated if omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :event_id

      # When the event occurred. Defaults to now.
      sig { returns(T.nilable(Time)) }
      attr_accessor :event_time

      # The plan associated with the event.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # The product associated with the event.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The referring URL.
      sig { returns(T.nilable(String)) }
      attr_accessor :referrer_url

      # For 'page' events: true when the page was restored from the back/forward cache.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :resumed

      # For 'identify' events: where the identity was captured (url, form, manual,
      # iframe).
      sig { returns(T.nilable(String)) }
      attr_accessor :source

      # For 'page' events: the document title.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The URL where the event occurred.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # User identity and profile data.
      sig { returns(T.nilable(WhopSDK::ConversionCreateParams::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::ConversionCreateParams::User::OrHash)
        ).void
      end
      attr_writer :user

      # Monetary value associated with the event.
      sig { returns(T.nilable(Float)) }
      attr_accessor :value

      sig do
        params(
          company_id: String,
          event_name: WhopSDK::ConversionCreateParams::EventName::OrSymbol,
          action_source:
            T.nilable(WhopSDK::ConversionCreateParams::ActionSource::OrSymbol),
          context: T.nilable(WhopSDK::ConversionCreateParams::Context::OrHash),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_name: T.nilable(String),
          duration: T.nilable(Integer),
          event_id: T.nilable(String),
          event_time: T.nilable(Time),
          plan_id: T.nilable(String),
          product_id: T.nilable(String),
          referrer_url: T.nilable(String),
          resumed: T.nilable(T::Boolean),
          source: T.nilable(String),
          title: T.nilable(String),
          url: T.nilable(String),
          user: T.nilable(WhopSDK::ConversionCreateParams::User::OrHash),
          value: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The company to associate with this event.
        company_id:,
        # The type of event.
        event_name:,
        # The channel where an event originated
        action_source: nil,
        # Tracking and attribution context.
        context: nil,
        # The available currencies on the platform
        currency: nil,
        # Custom event name when event_name is 'custom'.
        custom_name: nil,
        # For 'leave' events: milliseconds the visitor spent on the page.
        duration: nil,
        # Client-provided identifier for deduplication. Generated if omitted.
        event_id: nil,
        # When the event occurred. Defaults to now.
        event_time: nil,
        # The plan associated with the event.
        plan_id: nil,
        # The product associated with the event.
        product_id: nil,
        # The referring URL.
        referrer_url: nil,
        # For 'page' events: true when the page was restored from the back/forward cache.
        resumed: nil,
        # For 'identify' events: where the identity was captured (url, form, manual,
        # iframe).
        source: nil,
        # For 'page' events: the document title.
        title: nil,
        # The URL where the event occurred.
        url: nil,
        # User identity and profile data.
        user: nil,
        # Monetary value associated with the event.
        value: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            event_name: WhopSDK::ConversionCreateParams::EventName::OrSymbol,
            action_source:
              T.nilable(
                WhopSDK::ConversionCreateParams::ActionSource::OrSymbol
              ),
            context: T.nilable(WhopSDK::ConversionCreateParams::Context),
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            custom_name: T.nilable(String),
            duration: T.nilable(Integer),
            event_id: T.nilable(String),
            event_time: T.nilable(Time),
            plan_id: T.nilable(String),
            product_id: T.nilable(String),
            referrer_url: T.nilable(String),
            resumed: T.nilable(T::Boolean),
            source: T.nilable(String),
            title: T.nilable(String),
            url: T.nilable(String),
            user: T.nilable(WhopSDK::ConversionCreateParams::User),
            value: T.nilable(Float),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of event.
      module EventName
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ConversionCreateParams::EventName)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEAD =
          T.let(:lead, WhopSDK::ConversionCreateParams::EventName::TaggedSymbol)
        SUBMIT_APPLICATION =
          T.let(
            :submit_application,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )
        CONTACT =
          T.let(
            :contact,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )
        COMPLETE_REGISTRATION =
          T.let(
            :complete_registration,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )
        SCHEDULE =
          T.let(
            :schedule,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )
        PAGE =
          T.let(:page, WhopSDK::ConversionCreateParams::EventName::TaggedSymbol)
        LEAVE =
          T.let(
            :leave,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )
        IDENTIFY =
          T.let(
            :identify,
            WhopSDK::ConversionCreateParams::EventName::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::ConversionCreateParams::EventName::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The channel where an event originated
      module ActionSource
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ConversionCreateParams::ActionSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL =
          T.let(
            :email,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        WEBSITE =
          T.let(
            :website,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        APP =
          T.let(
            :app,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        PHONE_CALL =
          T.let(
            :phone_call,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        CHAT =
          T.let(
            :chat,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        PHYSICAL_STORE =
          T.let(
            :physical_store,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        SYSTEM_GENERATED =
          T.let(
            :system_generated,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        BUSINESS_MESSAGING =
          T.let(
            :business_messaging,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ConversionCreateParams::ActionSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Context < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ConversionCreateParams::Context,
              WhopSDK::Internal::AnyHash
            )
          end

        # Ad campaign ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ad_campaign_id

        # Ad ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ad_id

        # Ad set ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ad_set_id

        # Facebook click cookie (\_fbc, format fb.1.{timestamp}.{fbclid}).
        sig { returns(T.nilable(String)) }
        attr_accessor :fbc

        # Facebook click ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :fbclid

        # Facebook browser pixel ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :fbp

        # Client-side device fingerprint.
        sig { returns(T.nilable(String)) }
        attr_accessor :fingerprint

        # Confidence score (0-1) for the device fingerprint.
        sig { returns(T.nilable(Float)) }
        attr_accessor :fingerprint_confidence

        # Google Analytics client ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ga

        # Google click ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :gclid

        # Instagram session ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ig_sid

        # IP address.
        sig { returns(T.nilable(String)) }
        attr_accessor :ip_address

        # Browser language (e.g. en-US).
        sig { returns(T.nilable(String)) }
        attr_accessor :language

        # Screen resolution (e.g. 1920x1080).
        sig { returns(T.nilable(String)) }
        attr_accessor :screen_resolution

        # IANA timezone (e.g. America/New_York).
        sig { returns(T.nilable(String)) }
        attr_accessor :timezone

        # TikTok click ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ttclid

        # TikTok pixel ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :ttp

        # Browser user agent string.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_agent

        # UTM campaign parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :utm_campaign

        # UTM content parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :utm_content

        # UTM ID parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :utm_id

        # UTM medium parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :utm_medium

        # UTM source parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :utm_source

        # UTM term parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :utm_term

        # Tracking and attribution context.
        sig do
          params(
            ad_campaign_id: T.nilable(String),
            ad_id: T.nilable(String),
            ad_set_id: T.nilable(String),
            fbc: T.nilable(String),
            fbclid: T.nilable(String),
            fbp: T.nilable(String),
            fingerprint: T.nilable(String),
            fingerprint_confidence: T.nilable(Float),
            ga: T.nilable(String),
            gclid: T.nilable(String),
            ig_sid: T.nilable(String),
            ip_address: T.nilable(String),
            language: T.nilable(String),
            screen_resolution: T.nilable(String),
            timezone: T.nilable(String),
            ttclid: T.nilable(String),
            ttp: T.nilable(String),
            user_agent: T.nilable(String),
            utm_campaign: T.nilable(String),
            utm_content: T.nilable(String),
            utm_id: T.nilable(String),
            utm_medium: T.nilable(String),
            utm_source: T.nilable(String),
            utm_term: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Ad campaign ID.
          ad_campaign_id: nil,
          # Ad ID.
          ad_id: nil,
          # Ad set ID.
          ad_set_id: nil,
          # Facebook click cookie (\_fbc, format fb.1.{timestamp}.{fbclid}).
          fbc: nil,
          # Facebook click ID.
          fbclid: nil,
          # Facebook browser pixel ID.
          fbp: nil,
          # Client-side device fingerprint.
          fingerprint: nil,
          # Confidence score (0-1) for the device fingerprint.
          fingerprint_confidence: nil,
          # Google Analytics client ID.
          ga: nil,
          # Google click ID.
          gclid: nil,
          # Instagram session ID.
          ig_sid: nil,
          # IP address.
          ip_address: nil,
          # Browser language (e.g. en-US).
          language: nil,
          # Screen resolution (e.g. 1920x1080).
          screen_resolution: nil,
          # IANA timezone (e.g. America/New_York).
          timezone: nil,
          # TikTok click ID.
          ttclid: nil,
          # TikTok pixel ID.
          ttp: nil,
          # Browser user agent string.
          user_agent: nil,
          # UTM campaign parameter.
          utm_campaign: nil,
          # UTM content parameter.
          utm_content: nil,
          # UTM ID parameter.
          utm_id: nil,
          # UTM medium parameter.
          utm_medium: nil,
          # UTM source parameter.
          utm_source: nil,
          # UTM term parameter.
          utm_term: nil
        )
        end

        sig do
          override.returns(
            {
              ad_campaign_id: T.nilable(String),
              ad_id: T.nilable(String),
              ad_set_id: T.nilable(String),
              fbc: T.nilable(String),
              fbclid: T.nilable(String),
              fbp: T.nilable(String),
              fingerprint: T.nilable(String),
              fingerprint_confidence: T.nilable(Float),
              ga: T.nilable(String),
              gclid: T.nilable(String),
              ig_sid: T.nilable(String),
              ip_address: T.nilable(String),
              language: T.nilable(String),
              screen_resolution: T.nilable(String),
              timezone: T.nilable(String),
              ttclid: T.nilable(String),
              ttp: T.nilable(String),
              user_agent: T.nilable(String),
              utm_campaign: T.nilable(String),
              utm_content: T.nilable(String),
              utm_id: T.nilable(String),
              utm_medium: T.nilable(String),
              utm_source: T.nilable(String),
              utm_term: T.nilable(String)
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
              WhopSDK::ConversionCreateParams::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # An anonymous identifier for the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :anonymous_id

        # Date of birth (YYYY-MM-DD).
        sig { returns(T.nilable(String)) }
        attr_accessor :birthdate

        # City.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # Country.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # Email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # An external identifier for the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # First name.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # Gender
        sig do
          returns(
            T.nilable(WhopSDK::ConversionCreateParams::User::Gender::OrSymbol)
          )
        end
        attr_accessor :gender

        # Last name.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # A second anonymous identifier to link to this user (e.g. captured across an
        # iframe boundary).
        sig { returns(T.nilable(String)) }
        attr_accessor :linked_anonymous_id

        # A wuid from a linked frame, captured across an iframe boundary.
        sig { returns(T.nilable(String)) }
        attr_accessor :linked_wuid

        # The Whop member ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :member_id

        # The Whop membership ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :membership_id

        # Full display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Phone number.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # Postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # State or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The Whop user ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        # Username.
        sig { returns(T.nilable(String)) }
        attr_accessor :username

        # User identity and profile data.
        sig do
          params(
            anonymous_id: T.nilable(String),
            birthdate: T.nilable(String),
            city: T.nilable(String),
            country: T.nilable(String),
            email: T.nilable(String),
            external_id: T.nilable(String),
            first_name: T.nilable(String),
            gender:
              T.nilable(
                WhopSDK::ConversionCreateParams::User::Gender::OrSymbol
              ),
            last_name: T.nilable(String),
            linked_anonymous_id: T.nilable(String),
            linked_wuid: T.nilable(String),
            member_id: T.nilable(String),
            membership_id: T.nilable(String),
            name: T.nilable(String),
            phone: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String),
            user_id: T.nilable(String),
            username: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # An anonymous identifier for the user.
          anonymous_id: nil,
          # Date of birth (YYYY-MM-DD).
          birthdate: nil,
          # City.
          city: nil,
          # Country.
          country: nil,
          # Email address.
          email: nil,
          # An external identifier for the user.
          external_id: nil,
          # First name.
          first_name: nil,
          # Gender
          gender: nil,
          # Last name.
          last_name: nil,
          # A second anonymous identifier to link to this user (e.g. captured across an
          # iframe boundary).
          linked_anonymous_id: nil,
          # A wuid from a linked frame, captured across an iframe boundary.
          linked_wuid: nil,
          # The Whop member ID.
          member_id: nil,
          # The Whop membership ID.
          membership_id: nil,
          # Full display name.
          name: nil,
          # Phone number.
          phone: nil,
          # Postal code.
          postal_code: nil,
          # State or region.
          state: nil,
          # The Whop user ID.
          user_id: nil,
          # Username.
          username: nil
        )
        end

        sig do
          override.returns(
            {
              anonymous_id: T.nilable(String),
              birthdate: T.nilable(String),
              city: T.nilable(String),
              country: T.nilable(String),
              email: T.nilable(String),
              external_id: T.nilable(String),
              first_name: T.nilable(String),
              gender:
                T.nilable(
                  WhopSDK::ConversionCreateParams::User::Gender::OrSymbol
                ),
              last_name: T.nilable(String),
              linked_anonymous_id: T.nilable(String),
              linked_wuid: T.nilable(String),
              member_id: T.nilable(String),
              membership_id: T.nilable(String),
              name: T.nilable(String),
              phone: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String),
              user_id: T.nilable(String),
              username: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Gender
        module Gender
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::ConversionCreateParams::User::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :male,
              WhopSDK::ConversionCreateParams::User::Gender::TaggedSymbol
            )
          FEMALE =
            T.let(
              :female,
              WhopSDK::ConversionCreateParams::User::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::ConversionCreateParams::User::Gender::TaggedSymbol
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
