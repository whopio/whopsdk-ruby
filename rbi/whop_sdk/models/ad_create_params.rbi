# typed: strong

module WhopSDK
  module Models
    class AdCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCreateParams, WhopSDK::Internal::AnyHash)
        end

      # An inline ad group to create (same shape as POST /ad_groups, including
      # ad_campaign_id). Creates the ad group and the ad together. Provide this OR
      # ad_group_id.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :ad_group

      sig { params(ad_group: T.anything).void }
      attr_writer :ad_group

      # The existing ad group to create the ad in. Provide this OR ad_group, not both.
      sig { returns(T.nilable(String)) }
      attr_reader :ad_group_id

      sig { params(ad_group_id: String).void }
      attr_writer :ad_group_id

      # The call-to-action button shown on the ad.
      sig do
        returns(T.nilable(WhopSDK::AdCreateParams::CallToAction::OrSymbol))
      end
      attr_reader :call_to_action

      sig do
        params(
          call_to_action: WhopSDK::AdCreateParams::CallToAction::OrSymbol
        ).void
      end
      attr_writer :call_to_action

      # The ad's creative assets. Each entry is an uploaded file id with an optional
      # format; omit format for the original asset.
      sig { returns(T.nilable(T::Array[WhopSDK::AdCreateParams::Creative])) }
      attr_reader :creatives

      sig do
        params(
          creatives: T::Array[WhopSDK::AdCreateParams::Creative::OrHash]
        ).void
      end
      attr_writer :creatives

      # The description variants shown on the ad.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :descriptions

      sig { params(descriptions: T::Array[String]).void }
      attr_writer :descriptions

      # The headline variants shown on the ad.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :headlines

      sig { params(headlines: T::Array[String]).void }
      attr_writer :headlines

      # Instant lead form for the ad. Only allowed when the ad group's
      # conversion_location is an instant-form destination (instant_forms,
      # instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
      # lead_form_id.
      sig { returns(T.nilable(WhopSDK::AdCreateParams::LeadForm)) }
      attr_reader :lead_form

      sig { params(lead_form: WhopSDK::AdCreateParams::LeadForm::OrHash).void }
      attr_writer :lead_form

      # Use an existing Meta instant form instead of creating one — the form's Meta id,
      # from a form already on the ad's Facebook page. Only allowed when the ad group's
      # conversion_location is an instant-form destination. Mutually exclusive with
      # lead_form.
      sig { returns(T.nilable(String)) }
      attr_reader :lead_form_id

      sig { params(lead_form_id: String).void }
      attr_writer :lead_form_id

      # Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
      # (keyword).
      sig { returns(T.nilable(WhopSDK::AdCreateParams::MessagingConfig)) }
      attr_reader :messaging_config

      sig do
        params(
          messaging_config: WhopSDK::AdCreateParams::MessagingConfig::OrHash
        ).void
      end
      attr_writer :messaging_config

      # Whether the ad can appear alongside other advertisers' ads in the same unit.
      # Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :multi_advertiser_ads

      sig { params(multi_advertiser_ads: T::Boolean).void }
      attr_writer :multi_advertiser_ads

      # Promote an existing post instead of uploading creatives — a Facebook post or
      # Instagram media id. Mutually exclusive with creatives. Pair with post_source.
      sig { returns(T.nilable(String)) }
      attr_reader :post_id

      sig { params(post_id: String).void }
      attr_writer :post_id

      # Which network post_id refers to — facebook (a page post) or instagram (a media
      # id). Authoritative; when omitted the source is inferred from the id shape.
      sig { returns(T.nilable(WhopSDK::AdCreateParams::PostSource::OrSymbol)) }
      attr_reader :post_source

      sig do
        params(post_source: WhopSDK::AdCreateParams::PostSource::OrSymbol).void
      end
      attr_writer :post_source

      # The primary text variants shown in the ad body.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :primary_texts

      sig { params(primary_texts: T::Array[String]).void }
      attr_writer :primary_texts

      # The social accounts (Facebook page, Instagram profile) the ad runs under.
      sig do
        returns(T.nilable(T::Array[WhopSDK::AdCreateParams::SocialAccount]))
      end
      attr_reader :social_accounts

      sig do
        params(
          social_accounts:
            T::Array[WhopSDK::AdCreateParams::SocialAccount::OrHash]
        ).void
      end
      attr_writer :social_accounts

      # The display name of the ad.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # The URL the ad links to.
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      # Query parameters appended to the destination URL, as a string-to-string map.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :url_parameters

      sig { params(url_parameters: T.anything).void }
      attr_writer :url_parameters

      sig do
        params(
          ad_group: T.anything,
          ad_group_id: String,
          call_to_action: WhopSDK::AdCreateParams::CallToAction::OrSymbol,
          creatives: T::Array[WhopSDK::AdCreateParams::Creative::OrHash],
          descriptions: T::Array[String],
          headlines: T::Array[String],
          lead_form: WhopSDK::AdCreateParams::LeadForm::OrHash,
          lead_form_id: String,
          messaging_config: WhopSDK::AdCreateParams::MessagingConfig::OrHash,
          multi_advertiser_ads: T::Boolean,
          post_id: String,
          post_source: WhopSDK::AdCreateParams::PostSource::OrSymbol,
          primary_texts: T::Array[String],
          social_accounts:
            T::Array[WhopSDK::AdCreateParams::SocialAccount::OrHash],
          title: String,
          url: String,
          url_parameters: T.anything,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An inline ad group to create (same shape as POST /ad_groups, including
        # ad_campaign_id). Creates the ad group and the ad together. Provide this OR
        # ad_group_id.
        ad_group: nil,
        # The existing ad group to create the ad in. Provide this OR ad_group, not both.
        ad_group_id: nil,
        # The call-to-action button shown on the ad.
        call_to_action: nil,
        # The ad's creative assets. Each entry is an uploaded file id with an optional
        # format; omit format for the original asset.
        creatives: nil,
        # The description variants shown on the ad.
        descriptions: nil,
        # The headline variants shown on the ad.
        headlines: nil,
        # Instant lead form for the ad. Only allowed when the ad group's
        # conversion_location is an instant-form destination (instant_forms,
        # instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
        # lead_form_id.
        lead_form: nil,
        # Use an existing Meta instant form instead of creating one — the form's Meta id,
        # from a form already on the ad's Facebook page. Only allowed when the ad group's
        # conversion_location is an instant-form destination. Mutually exclusive with
        # lead_form.
        lead_form_id: nil,
        # Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
        # (keyword).
        messaging_config: nil,
        # Whether the ad can appear alongside other advertisers' ads in the same unit.
        # Defaults to true.
        multi_advertiser_ads: nil,
        # Promote an existing post instead of uploading creatives — a Facebook post or
        # Instagram media id. Mutually exclusive with creatives. Pair with post_source.
        post_id: nil,
        # Which network post_id refers to — facebook (a page post) or instagram (a media
        # id). Authoritative; when omitted the source is inferred from the id shape.
        post_source: nil,
        # The primary text variants shown in the ad body.
        primary_texts: nil,
        # The social accounts (Facebook page, Instagram profile) the ad runs under.
        social_accounts: nil,
        # The display name of the ad.
        title: nil,
        # The URL the ad links to.
        url: nil,
        # Query parameters appended to the destination URL, as a string-to-string map.
        url_parameters: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ad_group: T.anything,
            ad_group_id: String,
            call_to_action: WhopSDK::AdCreateParams::CallToAction::OrSymbol,
            creatives: T::Array[WhopSDK::AdCreateParams::Creative],
            descriptions: T::Array[String],
            headlines: T::Array[String],
            lead_form: WhopSDK::AdCreateParams::LeadForm,
            lead_form_id: String,
            messaging_config: WhopSDK::AdCreateParams::MessagingConfig,
            multi_advertiser_ads: T::Boolean,
            post_id: String,
            post_source: WhopSDK::AdCreateParams::PostSource::OrSymbol,
            primary_texts: T::Array[String],
            social_accounts: T::Array[WhopSDK::AdCreateParams::SocialAccount],
            title: String,
            url: String,
            url_parameters: T.anything,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The call-to-action button shown on the ad.
      module CallToAction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCreateParams::CallToAction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPLY_NOW =
          T.let(:apply_now, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        BOOK_NOW =
          T.let(:book_now, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        CALL_NOW =
          T.let(:call_now, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        CONTACT_US =
          T.let(
            :contact_us,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        DOWNLOAD =
          T.let(:download, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        GET_DIRECTIONS =
          T.let(
            :get_directions,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        GET_OFFER =
          T.let(:get_offer, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        GET_QUOTE =
          T.let(:get_quote, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        LEARN_MORE =
          T.let(
            :learn_more,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        LISTEN_NOW =
          T.let(
            :listen_now,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        MESSAGE_PAGE =
          T.let(
            :message_page,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        NO_BUTTON =
          T.let(:no_button, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        OPEN_LINK =
          T.let(:open_link, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        ORDER_NOW =
          T.let(:order_now, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        REQUEST_TIME =
          T.let(
            :request_time,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        SEE_DETAILS =
          T.let(
            :see_details,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        SEE_MENU =
          T.let(:see_menu, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        SEND_UPDATES =
          T.let(
            :send_updates,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )
        SHOP_NOW =
          T.let(:shop_now, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        SIGN_UP =
          T.let(:sign_up, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        SUBSCRIBE =
          T.let(:subscribe, WhopSDK::AdCreateParams::CallToAction::TaggedSymbol)
        WATCH_MORE =
          T.let(
            :watch_more,
            WhopSDK::AdCreateParams::CallToAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCreateParams::CallToAction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Creative < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdCreateParams::Creative, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The saved crop window for this creative, in source image pixels. Omit it for the
        # original asset or for a format that has not been cropped.
        sig { returns(T.nilable(WhopSDK::AdCreateParams::Creative::Crop)) }
        attr_reader :crop

        sig do
          params(crop: WhopSDK::AdCreateParams::Creative::Crop::OrHash).void
        end
        attr_writer :crop

        sig do
          returns(
            T.nilable(WhopSDK::AdCreateParams::Creative::Format::OrSymbol)
          )
        end
        attr_reader :format_

        sig do
          params(
            format_: WhopSDK::AdCreateParams::Creative::Format::OrSymbol
          ).void
        end
        attr_writer :format_

        sig do
          params(
            id: String,
            crop: WhopSDK::AdCreateParams::Creative::Crop::OrHash,
            format_: WhopSDK::AdCreateParams::Creative::Format::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # The saved crop window for this creative, in source image pixels. Omit it for the
          # original asset or for a format that has not been cropped.
          crop: nil,
          format_: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              crop: WhopSDK::AdCreateParams::Creative::Crop,
              format_: WhopSDK::AdCreateParams::Creative::Format::OrSymbol
            }
          )
        end
        def to_hash
        end

        class Crop < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::Creative::Crop,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :height

          sig { params(height: Float).void }
          attr_writer :height

          sig { returns(T.nilable(Float)) }
          attr_reader :width

          sig { params(width: Float).void }
          attr_writer :width

          sig { returns(T.nilable(Float)) }
          attr_reader :x

          sig { params(x: Float).void }
          attr_writer :x

          sig { returns(T.nilable(Float)) }
          attr_reader :y_

          sig { params(y_: Float).void }
          attr_writer :y_

          # The saved crop window for this creative, in source image pixels. Omit it for the
          # original asset or for a format that has not been cropped.
          sig do
            params(height: Float, width: Float, x: Float, y_: Float).returns(
              T.attached_class
            )
          end
          def self.new(height: nil, width: nil, x: nil, y_: nil)
          end

          sig do
            override.returns(
              { height: Float, width: Float, x: Float, y_: Float }
            )
          end
          def to_hash
          end
        end

        module Format
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdCreateParams::Creative::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SQUARE =
            T.let(
              :square,
              WhopSDK::AdCreateParams::Creative::Format::TaggedSymbol
            )
          VERTICAL =
            T.let(
              :vertical,
              WhopSDK::AdCreateParams::Creative::Format::TaggedSymbol
            )
          HORIZONTAL =
            T.let(
              :horizontal,
              WhopSDK::AdCreateParams::Creative::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::AdCreateParams::Creative::Format::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class LeadForm < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdCreateParams::LeadForm, WhopSDK::Internal::AnyHash)
          end

        # Optional completion screen shown after submission; url sets the follow-up
        # website button.
        sig do
          returns(T.nilable(WhopSDK::AdCreateParams::LeadForm::Completion))
        end
        attr_reader :completion

        sig do
          params(
            completion: WhopSDK::AdCreateParams::LeadForm::Completion::OrHash
          ).void
        end
        attr_writer :completion

        # Optional custom consent disclaimer with checkboxes.
        sig do
          returns(T.nilable(WhopSDK::AdCreateParams::LeadForm::Disclaimer))
        end
        attr_reader :disclaimer

        sig do
          params(
            disclaimer: WhopSDK::AdCreateParams::LeadForm::Disclaimer::OrHash
          ).void
        end
        attr_writer :disclaimer

        # more_volume (default) is quickest to submit; higher_intent adds a confirmation
        # step.
        sig do
          returns(
            T.nilable(WhopSDK::AdCreateParams::LeadForm::FormType::OrSymbol)
          )
        end
        attr_reader :form_type

        sig do
          params(
            form_type: WhopSDK::AdCreateParams::LeadForm::FormType::OrSymbol
          ).void
        end
        attr_writer :form_type

        # Optional intro screen shown before the questions.
        sig { returns(T.nilable(WhopSDK::AdCreateParams::LeadForm::Intro)) }
        attr_reader :intro

        sig do
          params(intro: WhopSDK::AdCreateParams::LeadForm::Intro::OrHash).void
        end
        attr_writer :intro

        # Internal name for the form. Auto-generated if omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Require SMS verification of the phone number (higher_intent forms).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :phone_verification

        sig { params(phone_verification: T::Boolean).void }
        attr_writer :phone_verification

        # Your privacy policy. url is required by Meta.
        sig do
          returns(T.nilable(WhopSDK::AdCreateParams::LeadForm::PrivacyPolicy))
        end
        attr_reader :privacy_policy

        sig do
          params(
            privacy_policy:
              WhopSDK::AdCreateParams::LeadForm::PrivacyPolicy::OrHash
          ).void
        end
        attr_writer :privacy_policy

        # The questions on the form. Standard prefill types need only a type; a custom
        # question needs a label and a format (plus options for multiple_choice). Options
        # carry an optional key and answer-routing logic.
        sig do
          returns(
            T.nilable(T::Array[WhopSDK::AdCreateParams::LeadForm::Question])
          )
        end
        attr_reader :questions

        sig do
          params(
            questions:
              T::Array[WhopSDK::AdCreateParams::LeadForm::Question::OrHash]
          ).void
        end
        attr_writer :questions

        # Instant lead form for the ad. Only allowed when the ad group's
        # conversion_location is an instant-form destination (instant_forms,
        # instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
        # lead_form_id.
        sig do
          params(
            completion: WhopSDK::AdCreateParams::LeadForm::Completion::OrHash,
            disclaimer: WhopSDK::AdCreateParams::LeadForm::Disclaimer::OrHash,
            form_type: WhopSDK::AdCreateParams::LeadForm::FormType::OrSymbol,
            intro: WhopSDK::AdCreateParams::LeadForm::Intro::OrHash,
            name: String,
            phone_verification: T::Boolean,
            privacy_policy:
              WhopSDK::AdCreateParams::LeadForm::PrivacyPolicy::OrHash,
            questions:
              T::Array[WhopSDK::AdCreateParams::LeadForm::Question::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Optional completion screen shown after submission; url sets the follow-up
          # website button.
          completion: nil,
          # Optional custom consent disclaimer with checkboxes.
          disclaimer: nil,
          # more_volume (default) is quickest to submit; higher_intent adds a confirmation
          # step.
          form_type: nil,
          # Optional intro screen shown before the questions.
          intro: nil,
          # Internal name for the form. Auto-generated if omitted.
          name: nil,
          # Require SMS verification of the phone number (higher_intent forms).
          phone_verification: nil,
          # Your privacy policy. url is required by Meta.
          privacy_policy: nil,
          # The questions on the form. Standard prefill types need only a type; a custom
          # question needs a label and a format (plus options for multiple_choice). Options
          # carry an optional key and answer-routing logic.
          questions: nil
        )
        end

        sig do
          override.returns(
            {
              completion: WhopSDK::AdCreateParams::LeadForm::Completion,
              disclaimer: WhopSDK::AdCreateParams::LeadForm::Disclaimer,
              form_type: WhopSDK::AdCreateParams::LeadForm::FormType::OrSymbol,
              intro: WhopSDK::AdCreateParams::LeadForm::Intro,
              name: String,
              phone_verification: T::Boolean,
              privacy_policy: WhopSDK::AdCreateParams::LeadForm::PrivacyPolicy,
              questions: T::Array[WhopSDK::AdCreateParams::LeadForm::Question]
            }
          )
        end
        def to_hash
        end

        class Completion < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::LeadForm::Completion,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :button_text

          sig { params(button_text: String).void }
          attr_writer :button_text

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :headline

          sig { params(headline: String).void }
          attr_writer :headline

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # Optional completion screen shown after submission; url sets the follow-up
          # website button.
          sig do
            params(
              button_text: String,
              description: String,
              headline: String,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            button_text: nil,
            description: nil,
            headline: nil,
            url: nil
          )
          end

          sig do
            override.returns(
              {
                button_text: String,
                description: String,
                headline: String,
                url: String
              }
            )
          end
          def to_hash
          end
        end

        class Disclaimer < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::LeadForm::Disclaimer,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :body

          sig { params(body: String).void }
          attr_writer :body

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Disclaimer::Checkbox
                ]
              )
            )
          end
          attr_reader :checkboxes

          sig do
            params(
              checkboxes:
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Disclaimer::Checkbox::OrHash
                ]
            ).void
          end
          attr_writer :checkboxes

          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          # Optional custom consent disclaimer with checkboxes.
          sig do
            params(
              body: String,
              checkboxes:
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Disclaimer::Checkbox::OrHash
                ],
              title: String
            ).returns(T.attached_class)
          end
          def self.new(body: nil, checkboxes: nil, title: nil)
          end

          sig do
            override.returns(
              {
                body: String,
                checkboxes:
                  T::Array[
                    WhopSDK::AdCreateParams::LeadForm::Disclaimer::Checkbox
                  ],
                title: String
              }
            )
          end
          def to_hash
          end

          class Checkbox < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdCreateParams::LeadForm::Disclaimer::Checkbox,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :checked_by_default

            sig { params(checked_by_default: T::Boolean).void }
            attr_writer :checked_by_default

            sig { returns(T.nilable(String)) }
            attr_reader :key

            sig { params(key: String).void }
            attr_writer :key

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required

            sig { params(required: T::Boolean).void }
            attr_writer :required

            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig do
              params(
                checked_by_default: T::Boolean,
                key: String,
                required: T::Boolean,
                text: String
              ).returns(T.attached_class)
            end
            def self.new(
              checked_by_default: nil,
              key: nil,
              required: nil,
              text: nil
            )
            end

            sig do
              override.returns(
                {
                  checked_by_default: T::Boolean,
                  key: String,
                  required: T::Boolean,
                  text: String
                }
              )
            end
            def to_hash
            end
          end
        end

        # more_volume (default) is quickest to submit; higher_intent adds a confirmation
        # step.
        module FormType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdCreateParams::LeadForm::FormType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MORE_VOLUME =
            T.let(
              :more_volume,
              WhopSDK::AdCreateParams::LeadForm::FormType::TaggedSymbol
            )
          HIGHER_INTENT =
            T.let(
              :higher_intent,
              WhopSDK::AdCreateParams::LeadForm::FormType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCreateParams::LeadForm::FormType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Intro < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::LeadForm::Intro,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :headline

          sig { params(headline: String).void }
          attr_writer :headline

          # Optional intro screen shown before the questions.
          sig do
            params(description: String, headline: String).returns(
              T.attached_class
            )
          end
          def self.new(description: nil, headline: nil)
          end

          sig { override.returns({ description: String, headline: String }) }
          def to_hash
          end
        end

        class PrivacyPolicy < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::LeadForm::PrivacyPolicy,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :link_text

          sig { params(link_text: String).void }
          attr_writer :link_text

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # Your privacy policy. url is required by Meta.
          sig do
            params(link_text: String, url: String).returns(T.attached_class)
          end
          def self.new(link_text: nil, url: nil)
          end

          sig { override.returns({ link_text: String, url: String }) }
          def to_hash
          end
        end

        class Question < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::LeadForm::Question,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::LeadForm::Question::Format::OrSymbol
              )
            )
          end
          attr_reader :format_

          sig do
            params(
              format_:
                WhopSDK::AdCreateParams::LeadForm::Question::Format::OrSymbol
            ).void
          end
          attr_writer :format_

          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig do
            returns(
              T.nilable(
                T::Array[WhopSDK::AdCreateParams::LeadForm::Question::Option]
              )
            )
          end
          attr_reader :options

          sig do
            params(
              options:
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Question::Option::OrHash
                ]
            ).void
          end
          attr_writer :options

          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::LeadForm::Question::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type: WhopSDK::AdCreateParams::LeadForm::Question::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              format_:
                WhopSDK::AdCreateParams::LeadForm::Question::Format::OrSymbol,
              label: String,
              options:
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Question::Option::OrHash
                ],
              type: WhopSDK::AdCreateParams::LeadForm::Question::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(format_: nil, label: nil, options: nil, type: nil)
          end

          sig do
            override.returns(
              {
                format_:
                  WhopSDK::AdCreateParams::LeadForm::Question::Format::OrSymbol,
                label: String,
                options:
                  T::Array[WhopSDK::AdCreateParams::LeadForm::Question::Option],
                type:
                  WhopSDK::AdCreateParams::LeadForm::Question::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Format
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::LeadForm::Question::Format
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SHORT_ANSWER =
              T.let(
                :short_answer,
                WhopSDK::AdCreateParams::LeadForm::Question::Format::TaggedSymbol
              )
            MULTIPLE_CHOICE =
              T.let(
                :multiple_choice,
                WhopSDK::AdCreateParams::LeadForm::Question::Format::TaggedSymbol
              )
            APPOINTMENT =
              T.let(
                :appointment,
                WhopSDK::AdCreateParams::LeadForm::Question::Format::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Question::Format::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Option < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdCreateParams::LeadForm::Question::Option,
                  WhopSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :key

            sig { params(key: String).void }
            attr_writer :key

            sig do
              returns(
                T.nilable(
                  WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic
                )
              )
            end
            attr_reader :logic

            sig do
              params(
                logic:
                  WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::OrHash
              ).void
            end
            attr_writer :logic

            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(
                key: String,
                logic:
                  WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::OrHash,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(key: nil, logic: nil, value: nil)
            end

            sig do
              override.returns(
                {
                  key: String,
                  logic:
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic,
                  value: String
                }
              )
            end
            def to_hash
            end

            class Logic < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic,
                    WhopSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::OrSymbol
                  )
                )
              end
              attr_reader :action

              sig do
                params(
                  action:
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::OrSymbol
                ).void
              end
              attr_writer :action

              sig { returns(T.nilable(Integer)) }
              attr_reader :target_end_page_index

              sig { params(target_end_page_index: Integer).void }
              attr_writer :target_end_page_index

              sig { returns(T.nilable(Integer)) }
              attr_reader :target_question_index

              sig { params(target_question_index: Integer).void }
              attr_writer :target_question_index

              sig do
                params(
                  action:
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::OrSymbol,
                  target_end_page_index: Integer,
                  target_question_index: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                action: nil,
                target_end_page_index: nil,
                target_question_index: nil
              )
              end

              sig do
                override.returns(
                  {
                    action:
                      WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::OrSymbol,
                    target_end_page_index: Integer,
                    target_question_index: Integer
                  }
                )
              end
              def to_hash
              end

              module Action
                extend WhopSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GO_TO_QUESTION =
                  T.let(
                    :go_to_question,
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                  )
                SUBMIT_FORM =
                  T.let(
                    :submit_form,
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                  )
                CLOSE_FORM =
                  T.let(
                    :close_form,
                    WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      WhopSDK::AdCreateParams::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          module Type
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, WhopSDK::AdCreateParams::LeadForm::Question::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :email,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            PHONE =
              T.let(
                :phone,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            FULL_NAME =
              T.let(
                :full_name,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            FIRST_NAME =
              T.let(
                :first_name,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            LAST_NAME =
              T.let(
                :last_name,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            CITY =
              T.let(
                :city,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            STATE =
              T.let(
                :state,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            ZIP =
              T.let(
                :zip,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            COUNTRY =
              T.let(
                :country,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            STREET_ADDRESS =
              T.let(
                :street_address,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            JOB_TITLE =
              T.let(
                :job_title,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            COMPANY_NAME =
              T.let(
                :company_name,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            WORK_EMAIL =
              T.let(
                :work_email,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            WORK_PHONE_NUMBER =
              T.let(
                :work_phone_number,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            DOB =
              T.let(
                :dob,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            GENDER =
              T.let(
                :gender,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            MARITAL_STATUS =
              T.let(
                :marital_status,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            RELATIONSHIP_STATUS =
              T.let(
                :relationship_status,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            MILITARY_STATUS =
              T.let(
                :military_status,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            DATE_TIME =
              T.let(
                :date_time,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::LeadForm::Question::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class MessagingConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdCreateParams::MessagingConfig,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :keyword

        sig { params(keyword: String).void }
        attr_writer :keyword

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
        # (keyword).
        sig do
          params(keyword: String, message: String).returns(T.attached_class)
        end
        def self.new(keyword: nil, message: nil)
        end

        sig { override.returns({ keyword: String, message: String }) }
        def to_hash
        end
      end

      # Which network post_id refers to — facebook (a page post) or instagram (a media
      # id). Authoritative; when omitted the source is inferred from the id shape.
      module PostSource
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCreateParams::PostSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FACEBOOK =
          T.let(:facebook, WhopSDK::AdCreateParams::PostSource::TaggedSymbol)
        INSTAGRAM =
          T.let(:instagram, WhopSDK::AdCreateParams::PostSource::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCreateParams::PostSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class SocialAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdCreateParams::SocialAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(id: nil)
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
