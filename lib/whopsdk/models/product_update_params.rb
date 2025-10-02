# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Products#update
    class ProductUpdateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute banner_image
      #   A banner image for the access pass in png, jpeg format
      #
      #   @return [Whopsdk::Models::ProductUpdateParams::BannerImage, nil]
      optional :banner_image, -> { Whopsdk::ProductUpdateParams::BannerImage }, nil?: true

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, Whopsdk::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { Whopsdk::BusinessTypes }, nil?: true

      # @!attribute custom_cta
      #   The different types of custom CTAs that can be selected.
      #
      #   @return [Symbol, Whopsdk::Models::CustomCta, nil]
      optional :custom_cta, enum: -> { Whopsdk::CustomCta }, nil?: true

      # @!attribute custom_cta_url
      #   The custom call to action URL for the access pass.
      #
      #   @return [String, nil]
      optional :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   The custom statement descriptor for the access pass i.e. WHOP\*SPORTS, must be
      #   between 5 and 22 characters, contain at least one letter, and not contain any of
      #   the following characters: <, >, \, ', "
      #
      #   @return [String, nil]
      optional :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A written description of the access pass.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute global_affiliate_percentage
      #   The percentage of the revenue that goes to the global affiliate program.
      #
      #   @return [Float, nil]
      optional :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The different statuses of the global affiliate program for an access pass.
      #
      #   @return [Symbol, Whopsdk::Models::GlobalAffiliateStatus, nil]
      optional :global_affiliate_status, enum: -> { Whopsdk::GlobalAffiliateStatus }, nil?: true

      # @!attribute headline
      #   The headline of the access pass.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, Whopsdk::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { Whopsdk::IndustryTypes }, nil?: true

      # @!attribute member_affiliate_percentage
      #   The percentage of the revenue that goes to the member affiliate program.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The different statuses of the global affiliate program for an access pass.
      #
      #   @return [Symbol, Whopsdk::Models::GlobalAffiliateStatus, nil]
      optional :member_affiliate_status, enum: -> { Whopsdk::GlobalAffiliateStatus }, nil?: true

      # @!attribute product_tax_code_id
      #   The ID of the product tax code to apply to this access pass.
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute redirect_purchase_url
      #   The URL to redirect the customer to after a purchase.
      #
      #   @return [String, nil]
      optional :redirect_purchase_url, String, nil?: true

      # @!attribute route
      #   The route of the access pass.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute title
      #   The title of the access pass.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, Whopsdk::Models::Visibility, nil]
      optional :visibility, enum: -> { Whopsdk::Visibility }, nil?: true

      # @!method initialize(banner_image: nil, business_type: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_type: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::ProductUpdateParams} for more details.
      #
      #   @param banner_image [Whopsdk::Models::ProductUpdateParams::BannerImage, nil] A banner image for the access pass in png, jpeg format
      #
      #   @param business_type [Symbol, Whopsdk::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param custom_cta [Symbol, Whopsdk::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      #   @param custom_cta_url [String, nil] The custom call to action URL for the access pass.
      #
      #   @param custom_statement_descriptor [String, nil] The custom statement descriptor for the access pass i.e. WHOP\*SPORTS, must be
      #   be
      #
      #   @param description [String, nil] A written description of the access pass.
      #
      #   @param global_affiliate_percentage [Float, nil] The percentage of the revenue that goes to the global affiliate program.
      #
      #   @param global_affiliate_status [Symbol, Whopsdk::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for an access pass.
      #
      #   @param headline [String, nil] The headline of the access pass.
      #
      #   @param industry_type [Symbol, Whopsdk::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_affiliate_percentage [Float, nil] The percentage of the revenue that goes to the member affiliate program.
      #
      #   @param member_affiliate_status [Symbol, Whopsdk::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for an access pass.
      #
      #   @param product_tax_code_id [String, nil] The ID of the product tax code to apply to this access pass.
      #
      #   @param redirect_purchase_url [String, nil] The URL to redirect the customer to after a purchase.
      #
      #   @param route [String, nil] The route of the access pass.
      #
      #   @param title [String, nil] The title of the access pass.
      #
      #   @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      class BannerImage < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing attachment object. Use this when updating a resource and
        #   keeping a subset of the attachments. Don't use this unless you know what you're
        #   doing.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute direct_upload_id
        #   This ID should be used the first time you upload an attachment. It is the ID of
        #   the direct upload that was created when uploading the file to S3 via the
        #   mediaDirectUpload mutation.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String, nil?: true

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::ProductUpdateParams::BannerImage} for more details.
        #
        #   A banner image for the access pass in png, jpeg format
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
      end
    end
  end
end
