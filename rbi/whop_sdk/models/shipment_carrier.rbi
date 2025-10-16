# typed: strong

module WhopSDK
  module Models
    # The carrier of a shipment
    module ShipmentCarrier
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ShipmentCarrier) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACCURATE = T.let(:accurate, WhopSDK::ShipmentCarrier::TaggedSymbol)
      AMAZON_MWS = T.let(:amazon_mws, WhopSDK::ShipmentCarrier::TaggedSymbol)
      AMAZON_SHIPPING =
        T.let(:amazon_shipping, WhopSDK::ShipmentCarrier::TaggedSymbol)
      APC = T.let(:apc, WhopSDK::ShipmentCarrier::TaggedSymbol)
      ASENDIA_USA = T.let(:asendia_usa, WhopSDK::ShipmentCarrier::TaggedSymbol)
      AUSTRALIA_POST =
        T.let(:australia_post, WhopSDK::ShipmentCarrier::TaggedSymbol)
      AXLEHIRE_V3 = T.let(:axlehire_v3, WhopSDK::ShipmentCarrier::TaggedSymbol)
      BETTER_TRUCKS =
        T.let(:better_trucks, WhopSDK::ShipmentCarrier::TaggedSymbol)
      CANADA_POST = T.let(:canada_post, WhopSDK::ShipmentCarrier::TaggedSymbol)
      CANPAR = T.let(:canpar, WhopSDK::ShipmentCarrier::TaggedSymbol)
      COLUMBUS_LAST_MILE =
        T.let(:columbus_last_mile, WhopSDK::ShipmentCarrier::TaggedSymbol)
      CHRONOPOST = T.let(:chronopost, WhopSDK::ShipmentCarrier::TaggedSymbol)
      CLOUD_SORT = T.let(:cloud_sort, WhopSDK::ShipmentCarrier::TaggedSymbol)
      COURIER_EXPRESS =
        T.let(:courier_express, WhopSDK::ShipmentCarrier::TaggedSymbol)
      COURIERS_PLEASE =
        T.let(:couriers_please, WhopSDK::ShipmentCarrier::TaggedSymbol)
      CS_LOGISTICS =
        T.let(:cs_logistics, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DAI_POST = T.let(:dai_post, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DEUTSCHE_POST_UK =
        T.let(:deutsche_post_uk, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DEUTSCHE_POST =
        T.let(:deutsche_post, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DHL_ECOMMERCE_ASIA =
        T.let(:dhl_ecommerce_asia, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DHL_ECS = T.let(:dhl_ecs, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DHL_EXPRESS = T.let(:dhl_express, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DHL_PAKET = T.let(:dhl_paket, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DOOR_DASH = T.let(:door_dash, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DPD_NL = T.let(:dpd_nl, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DPD_UK = T.let(:dpd_uk, WhopSDK::ShipmentCarrier::TaggedSymbol)
      DPD = T.let(:dpd, WhopSDK::ShipmentCarrier::TaggedSymbol)
      EPOST_GLOBAL =
        T.let(:epost_global, WhopSDK::ShipmentCarrier::TaggedSymbol)
      ESTAFETA = T.let(:estafeta, WhopSDK::ShipmentCarrier::TaggedSymbol)
      EVRI = T.let(:evri, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FASTWAY = T.let(:fastway, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FEDEX_CROSS_BORDER =
        T.let(:fedex_cross_border, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FEDEX_DEFAULT =
        T.let(:fedex_default, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FEDEX_MAILVIEW =
        T.let(:fedex_mailview, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FEDEX_SMARTPOST =
        T.let(:fedex_smartpost, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FEDEX = T.let(:fedex, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FIRST_CHOICE =
        T.let(:first_choice, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FIRST_MILE = T.let(:first_mile, WhopSDK::ShipmentCarrier::TaggedSymbol)
      FLEXPORT = T.let(:flexport, WhopSDK::ShipmentCarrier::TaggedSymbol)
      GIO = T.let(:gio, WhopSDK::ShipmentCarrier::TaggedSymbol)
      GIO_EXPRESS = T.let(:gio_express, WhopSDK::ShipmentCarrier::TaggedSymbol)
      GSO = T.let(:gso, WhopSDK::ShipmentCarrier::TaggedSymbol)
      HAILIFY = T.let(:hailify, WhopSDK::ShipmentCarrier::TaggedSymbol)
      HENRY = T.let(:henry, WhopSDK::ShipmentCarrier::TaggedSymbol)
      INTERLINK_EXPRESS =
        T.let(:interlink_express, WhopSDK::ShipmentCarrier::TaggedSymbol)
      JET = T.let(:jet, WhopSDK::ShipmentCarrier::TaggedSymbol)
      KURONEKO_YAMATO =
        T.let(:kuroneko_yamato, WhopSDK::ShipmentCarrier::TaggedSymbol)
      LA_POST = T.let(:la_post, WhopSDK::ShipmentCarrier::TaggedSymbol)
      LASERSHIP_V2 =
        T.let(:lasership_v2, WhopSDK::ShipmentCarrier::TaggedSymbol)
      LOOMIS_EXPRESS =
        T.let(:loomis_express, WhopSDK::ShipmentCarrier::TaggedSymbol)
      LSO = T.let(:lso, WhopSDK::ShipmentCarrier::TaggedSymbol)
      ONTRAC = T.let(:ontrac, WhopSDK::ShipmentCarrier::TaggedSymbol)
      OPTIMA = T.let(:optima, WhopSDK::ShipmentCarrier::TaggedSymbol)
      OSM_WORLDWIDE =
        T.let(:osm_worldwide, WhopSDK::ShipmentCarrier::TaggedSymbol)
      PARCELFORCE = T.let(:parcelforce, WhopSDK::ShipmentCarrier::TaggedSymbol)
      PARCLL = T.let(:parcll, WhopSDK::ShipmentCarrier::TaggedSymbol)
      PASSPORT_GLOBAL =
        T.let(:passport_global, WhopSDK::ShipmentCarrier::TaggedSymbol)
      POST_NL = T.let(:post_nl, WhopSDK::ShipmentCarrier::TaggedSymbol)
      PUROLATOR = T.let(:purolator, WhopSDK::ShipmentCarrier::TaggedSymbol)
      QUICK = T.let(:quick, WhopSDK::ShipmentCarrier::TaggedSymbol)
      ROYAL_MAIL = T.let(:royal_mail, WhopSDK::ShipmentCarrier::TaggedSymbol)
      OMNI_PARCEL = T.let(:omni_parcel, WhopSDK::ShipmentCarrier::TaggedSymbol)
      SENDLE = T.let(:sendle, WhopSDK::ShipmentCarrier::TaggedSymbol)
      SF_EXPRESS = T.let(:sf_express, WhopSDK::ShipmentCarrier::TaggedSymbol)
      SMART_KARGO = T.let(:smart_kargo, WhopSDK::ShipmentCarrier::TaggedSymbol)
      SONIC = T.let(:sonic, WhopSDK::ShipmentCarrier::TaggedSymbol)
      SPEE_DEE = T.let(:spee_dee, WhopSDK::ShipmentCarrier::TaggedSymbol)
      SWYFT = T.let(:swyft, WhopSDK::ShipmentCarrier::TaggedSymbol)
      TFORCE = T.let(:tforce, WhopSDK::ShipmentCarrier::TaggedSymbol)
      UDS = T.let(:uds, WhopSDK::ShipmentCarrier::TaggedSymbol)
      UPS_IPARCEL = T.let(:ups_iparcel, WhopSDK::ShipmentCarrier::TaggedSymbol)
      UPS_MAIL_INNOVATIONS =
        T.let(:ups_mail_innovations, WhopSDK::ShipmentCarrier::TaggedSymbol)
      UPS = T.let(:ups, WhopSDK::ShipmentCarrier::TaggedSymbol)
      USPS = T.let(:usps, WhopSDK::ShipmentCarrier::TaggedSymbol)
      VEHO = T.let(:veho, WhopSDK::ShipmentCarrier::TaggedSymbol)
      YANWEN = T.let(:yanwen, WhopSDK::ShipmentCarrier::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::ShipmentCarrier::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
