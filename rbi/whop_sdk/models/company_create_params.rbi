# typed: strong

module WhopSDK
  module Models
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The display name of the company shown to customers.
      sig { returns(String) }
      attr_accessor :title

      # The available countries on the platform
      sig do
        returns(T.nilable(WhopSDK::CompanyCreateParams::Country::OrSymbol))
      end
      attr_accessor :country

      # A promotional pitch displayed to potential customers on the company's store
      # page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The email address of the user who will own the connected account. Required when
      # parent_company_id is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The company's logo image. Accepts PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CompanyCreateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # A key-value JSON object of custom metadata to store on the company.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The unique identifier of the parent platform company. When provided, creates a
      # connected account under that platform. Omit to create a company for the current
      # user.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_company_id

      # Whether Whop sends transactional emails to customers on behalf of this company.
      # Only applies when creating a connected account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      sig do
        params(
          title: String,
          country: T.nilable(WhopSDK::CompanyCreateParams::Country::OrSymbol),
          description: T.nilable(String),
          email: T.nilable(String),
          logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          parent_company_id: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The display name of the company shown to customers.
        title:,
        # The available countries on the platform
        country: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The email address of the user who will own the connected account. Required when
        # parent_company_id is provided.
        email: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # A key-value JSON object of custom metadata to store on the company.
        metadata: nil,
        # The unique identifier of the parent platform company. When provided, creates a
        # connected account under that platform. Omit to create a company for the current
        # user.
        parent_company_id: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Only applies when creating a connected account.
        send_customer_emails: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            title: String,
            country: T.nilable(WhopSDK::CompanyCreateParams::Country::OrSymbol),
            description: T.nilable(String),
            email: T.nilable(String),
            logo: T.nilable(WhopSDK::CompanyCreateParams::Logo),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            parent_company_id: T.nilable(String),
            send_customer_emails: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The available countries on the platform
      module Country
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CompanyCreateParams::Country) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US = T.let(:us, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CA = T.let(:ca, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GB = T.let(:gb, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AB = T.let(:ab, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AF = T.let(:af, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AL = T.let(:al, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        DZ = T.let(:dz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AS = T.let(:as, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AD = T.let(:ad, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AO = T.let(:ao, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AI = T.let(:ai, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AQ = T.let(:aq, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AG = T.let(:ag, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AR = T.let(:ar, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AM = T.let(:am, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AW = T.let(:aw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AU = T.let(:au, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AT = T.let(:at, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AZ = T.let(:az, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BS = T.let(:bs, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BH = T.let(:bh, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BD = T.let(:bd, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BB = T.let(:bb, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BY = T.let(:by, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BE = T.let(:be, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BZ = T.let(:bz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BJ = T.let(:bj, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BM = T.let(:bm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BT = T.let(:bt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BO = T.let(:bo, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BA = T.let(:ba, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BW = T.let(:bw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BR = T.let(:br, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IO = T.let(:io, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VG = T.let(:vg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BN = T.let(:bn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BG = T.let(:bg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BF = T.let(:bf, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BI = T.let(:bi, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KH = T.let(:kh, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CM = T.let(:cm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CV = T.let(:cv, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KY = T.let(:ky, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CF = T.let(:cf, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TD = T.let(:td, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CL = T.let(:cl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CN = T.let(:cn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CX = T.let(:cx, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CC = T.let(:cc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CO = T.let(:co, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KM = T.let(:km, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CG = T.let(:cg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CK = T.let(:ck, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CR = T.let(:cr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CI = T.let(:ci, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        HR = T.let(:hr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CU = T.let(:cu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CW = T.let(:cw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CY = T.let(:cy, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CZ = T.let(:cz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CD = T.let(:cd, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        DK = T.let(:dk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        DJ = T.let(:dj, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        DM = T.let(:dm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        DO = T.let(:do, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        EC = T.let(:ec, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        EG = T.let(:eg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SV = T.let(:sv, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GQ = T.let(:gq, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        EE = T.let(:ee, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ET = T.let(:et, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        FK = T.let(:fk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        FO = T.let(:fo, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        FJ = T.let(:fj, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        FI = T.let(:fi, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        FR = T.let(:fr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GF = T.let(:gf, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PF = T.let(:pf, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GA = T.let(:ga, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GM = T.let(:gm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GE = T.let(:ge, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        DE = T.let(:de, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GH = T.let(:gh, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GI = T.let(:gi, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GR = T.let(:gr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GL = T.let(:gl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GD = T.let(:gd, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GP = T.let(:gp, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GU = T.let(:gu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GT = T.let(:gt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GG = T.let(:gg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GN = T.let(:gn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GW = T.let(:gw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        GY = T.let(:gy, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        HT = T.let(:ht, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        HN = T.let(:hn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        HK = T.let(:hk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        HU = T.let(:hu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IS = T.let(:is, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IN = T.let(:in, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ID = T.let(:id, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IQ = T.let(:iq, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IE = T.let(:ie, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IM = T.let(:im, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IL = T.let(:il, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        IT = T.let(:it, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        JM = T.let(:jm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SJ = T.let(:sj, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        JP = T.let(:jp, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        JE = T.let(:je, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        JO = T.let(:jo, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KZ = T.let(:kz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KE = T.let(:ke, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KI = T.let(:ki, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        XK = T.let(:xk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KW = T.let(:kw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KG = T.let(:kg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LA = T.let(:la, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LV = T.let(:lv, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LB = T.let(:lb, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LS = T.let(:ls, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LR = T.let(:lr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LY = T.let(:ly, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LI = T.let(:li, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LT = T.let(:lt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LU = T.let(:lu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MO = T.let(:mo, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MK = T.let(:mk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MG = T.let(:mg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MW = T.let(:mw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MY = T.let(:my, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MV = T.let(:mv, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ML = T.let(:ml, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MT = T.let(:mt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MH = T.let(:mh, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MQ = T.let(:mq, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MR = T.let(:mr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MU = T.let(:mu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        YT = T.let(:yt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MX = T.let(:mx, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        FM = T.let(:fm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MD = T.let(:md, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MC = T.let(:mc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MN = T.let(:mn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ME = T.let(:me, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MS = T.let(:ms, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MA = T.let(:ma, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MZ = T.let(:mz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MM = T.let(:mm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NA = T.let(:na, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NR = T.let(:nr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NP = T.let(:np, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NL = T.let(:nl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AN = T.let(:an, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NC = T.let(:nc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NZ = T.let(:nz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NI = T.let(:ni, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NE = T.let(:ne, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NG = T.let(:ng, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NU = T.let(:nu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MP = T.let(:mp, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        NO = T.let(:no, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        OM = T.let(:om, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PK = T.let(:pk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PW = T.let(:pw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PS = T.let(:ps, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PA = T.let(:pa, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PG = T.let(:pg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PY = T.let(:py, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PE = T.let(:pe, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PH = T.let(:ph, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PN = T.let(:pn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PL = T.let(:pl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PT = T.let(:pt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PR = T.let(:pr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        QA = T.let(:qa, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        RE = T.let(:re, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        RO = T.let(:ro, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        RU = T.let(:ru, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        RW = T.let(:rw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        BL = T.let(:bl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SH = T.let(:sh, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KN = T.let(:kn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LC = T.let(:lc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        MF = T.let(:mf, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        PM = T.let(:pm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VC = T.let(:vc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        WS = T.let(:ws, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SM = T.let(:sm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ST = T.let(:st, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SA = T.let(:sa, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SN = T.let(:sn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        RS = T.let(:rs, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SC = T.let(:sc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SL = T.let(:sl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SG = T.let(:sg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SX = T.let(:sx, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SK = T.let(:sk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SI = T.let(:si, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SB = T.let(:sb, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SO = T.let(:so, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ZA = T.let(:za, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        KR = T.let(:kr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SS = T.let(:ss, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ES = T.let(:es, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        LK = T.let(:lk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SD = T.let(:sd, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SR = T.let(:sr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SZ = T.let(:sz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SE = T.let(:se, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        CH = T.let(:ch, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TW = T.let(:tw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TJ = T.let(:tj, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TZ = T.let(:tz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TH = T.let(:th, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TL = T.let(:tl, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TG = T.let(:tg, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TK = T.let(:tk, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TO = T.let(:to, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TT = T.let(:tt, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TN = T.let(:tn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TR = T.let(:tr, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TM = T.let(:tm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TC = T.let(:tc, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        TV = T.let(:tv, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VI = T.let(:vi, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        UG = T.let(:ug, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        UA = T.let(:ua, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        AE = T.let(:ae, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        UM = T.let(:um, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        UY = T.let(:uy, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        UZ = T.let(:uz, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VU = T.let(:vu, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VA = T.let(:va, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VE = T.let(:ve, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        VN = T.let(:vn, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        WF = T.let(:wf, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        EH = T.let(:eh, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        YE = T.let(:ye, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ZM = T.let(:zm, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        ZW = T.let(:zw, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)
        SY = T.let(:sy, WhopSDK::CompanyCreateParams::Country::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CompanyCreateParams::Country::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyCreateParams::Logo,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
