.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GoogleSignInOptionsCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final zaa:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zab:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zac:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zad:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public static final zae:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zaq:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaf:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zag:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getScopes"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zah:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAccount"
        id = 0x3
    .end annotation
.end field

.field private zai:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isIdTokenRequested"
        id = 0x4
    .end annotation
.end field

.field private final zaj:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isServerAuthCodeRequested"
        id = 0x5
    .end annotation
.end field

.field private final zak:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isForceCodeForRefreshToken"
        id = 0x6
    .end annotation
.end field

.field private zal:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getServerClientId"
        id = 0x7
    .end annotation
.end field

.field private zam:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHostedDomain"
        id = 0x8
    .end annotation
.end field

.field private zan:Ljava/util/ArrayList;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExtensions"
        id = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private zao:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLogSessionId"
        id = 0xa
    .end annotation
.end field

.field private zap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "profile"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaa:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "email"

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zab:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "openid"

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zac:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "https://www.googleapis.com/auth/games_lite"

    .line 4
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "https://www.googleapis.com/auth/games"

    .line 5
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-object v0, v1

    move-object v1, v0

    .line 6
    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    move-object v1, v0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-object v0, v1

    move-object v1, v0

    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    move-object v1, v0

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/zad;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/zad;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/zac;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/zac;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaq:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 22
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Ljava/util/ArrayList;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, v0

    move v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam(Ljava/util/List;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v21, v10

    .line 2
    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 13
    .param p3    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, v0

    .line 3
    invoke-direct {v11}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v11, v0

    move v12, v1

    iput v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaf:I

    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Landroid/accounts/Account;

    move-object v11, v0

    move v12, v4

    iput-boolean v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Z

    move-object v11, v0

    move v12, v5

    iput-boolean v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    move-object v11, v0

    move v12, v6

    iput-boolean v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    move-object v1, v11

    move-object v11, v1

    move-object v12, v9

    .line 4
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/util/ArrayList;

    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zap:Ljava/util/Map;

    move-object v11, v0

    move-object v12, v10

    iput-object v12, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/zac;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object v12, v0

    const/4 v13, 0x3

    move-object v14, v2

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static zaa(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 20
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object v9, v0

    .line 1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 15
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    move-object v2, v9

    move-object v9, v2

    move-object v10, v0

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashSet;

    move-object v1, v9

    move-object v9, v1

    .line 3
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v9, v2

    const-string v10, "scopes"

    .line 4
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    .line 5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v4, v9

    const/4 v9, 0x0

    move v0, v9

    :goto_1
    move v9, v0

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 6
    new-instance v9, Lcom/google/android/gms/common/api/Scope;

    move-object v5, v9

    move-object v9, v5

    move-object v10, v3

    move v11, v0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    move-object v10, v5

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v2

    const-string v10, "accountName"

    .line 7
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    const-string v10, "accountName"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    :goto_2
    move-object v9, v0

    .line 8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Landroid/accounts/Account;

    move-object v3, v9

    move-object v9, v3

    move-object v10, v0

    const-string v11, "com.google"

    .line 9
    invoke-direct {v9, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v3

    move-object v0, v9

    :goto_3
    new-instance v9, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-object v3, v9

    new-instance v9, Ljava/util/ArrayList;

    move-object v4, v9

    move-object v9, v4

    move-object v10, v1

    .line 10
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    const-string v10, "idTokenRequested"

    .line 11
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move v5, v9

    move-object v9, v2

    const-string v10, "serverAuthRequested"

    .line 12
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move v6, v9

    move-object v9, v2

    const-string v10, "forceCodeForRefreshToken"

    .line 13
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move v7, v9

    move-object v9, v2

    const-string v10, "serverClientId"

    .line 14
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    const-string v10, "serverClientId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    :goto_4
    move-object v9, v2

    const-string v10, "hostedDomain"

    .line 15
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v2

    const-string v10, "hostedDomain"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    :goto_5
    new-instance v9, Ljava/util/HashMap;

    move-object v8, v9

    move-object v9, v8

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v9, v3

    const/4 v10, 0x3

    move-object v11, v4

    move-object v12, v0

    move v13, v5

    move v14, v6

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v8

    const/16 v19, 0x0

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move-object v9, v3

    move-object v0, v9

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    move-object v2, v9

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    move-object v1, v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_2
.end method

.method static synthetic zac(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zad(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    move v0, v1

    return v0
.end method

.method static synthetic zae(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    move v0, v1

    return v0
.end method

.method static synthetic zaf(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Z

    move v0, v1

    return v0
.end method

.method static synthetic zag(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zah(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/accounts/Account;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Landroid/accounts/Account;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zai(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zaj(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zak(Ljava/util/List;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zal(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private static zam(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v3, Ljava/util/HashMap;

    move-object v1, v3

    move-object v3, v1

    .line 1
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    .line 3
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v3, v0

    .line 2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_1
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    move-object v2, v3

    move-object v3, v1

    move-object v4, v2

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 11
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v4, v1

    .line 1
    :try_start_0
    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    move v4, v2

    if-gtz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    move v4, v2

    if-lez v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    move v2, v4

    move v4, v2

    if-nez v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Landroid/accounts/Account;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_8

    move-object v4, v1

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_7

    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move v2, v4

    move v4, v2

    if-eqz v4, :cond_6

    move-object v4, v1

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move v2, v4

    move v4, v2

    if-eqz v4, :cond_7

    :cond_5
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    move v2, v4

    move-object v4, v1

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z

    move-result v4

    move v3, v4

    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_7

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Z

    move v2, v4

    move-object v4, v1

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    move-result v4

    move v3, v4

    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_7

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    move v2, v4

    move-object v4, v1

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isServerAuthCodeRequested()Z

    move-result v4

    move v3, v4

    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/lang/String;

    move-object v5, v1

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getLogSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    move v0, v4

    move v4, v0

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    move-object v5, v1

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    move v4, v2

    if-nez v4, :cond_5

    :cond_7
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_8
    move-object v4, v2

    move-object v5, v1

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    move v4, v2

    if-eqz v4, :cond_7

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Landroid/accounts/Account;

    move-object v0, v1

    return-object v0
.end method

.method public getExtensions()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zan:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getLogSessionId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getScopeArray()[Lcom/google/android/gms/common/api/Scope;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    move-object v0, v1

    move-object v1, v0

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/common/api/Scope;

    move-object v0, v1

    return-object v0
.end method

.method public getScopes()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v2, Ljava/util/ArrayList;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    .line 1
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v2, v5

    move-object v5, v2

    .line 1
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    move-object v3, v5

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_0

    move-object v5, v2

    move-object v6, v3

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 2
    check-cast v6, Lcom/google/android/gms/common/api/Scope;

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 4
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v5, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-object v1, v5

    move-object v5, v1

    .line 5
    invoke-direct {v5}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;-><init>()V

    move-object v5, v1

    move-object v6, v2

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Landroid/accounts/Account;

    .line 7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    .line 9
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Z

    .line 10
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    .line 11
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zao:Ljava/lang/String;

    .line 12
    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;

    move-result-object v5

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->hash()I

    move-result v5

    move v0, v5

    return v0
.end method

.method public isForceCodeForRefreshToken()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    move v0, v1

    return v0
.end method

.method public isIdTokenRequested()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Z

    move v0, v1

    return v0
.end method

.method public isServerAuthCodeRequested()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    move v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v4

    move v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaf:I

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x2

    move-object v6, v0

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopes()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    .line 4
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    move-object v4, v1

    const/4 v5, 0x3

    move-object v6, v0

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    move v7, v2

    const/4 v8, 0x0

    .line 6
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v0

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z

    move-result v6

    .line 8
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    const/4 v5, 0x5

    move-object v6, v0

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isServerAuthCodeRequested()Z

    move-result v6

    .line 10
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    const/4 v5, 0x6

    move-object v6, v0

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z

    move-result v6

    .line 12
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    const/4 v5, 0x7

    move-object v6, v0

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 14
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v1

    const/16 v5, 0x8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    const/4 v7, 0x0

    .line 15
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v1

    const/16 v5, 0x9

    move-object v6, v0

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getExtensions()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    .line 17
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    move-object v4, v1

    const/16 v5, 0xa

    move-object v6, v0

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getLogSessionId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 19
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v1

    move v5, v3

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zab()Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    new-instance v5, Lorg/json/JSONObject;

    move-object v1, v5

    move-object v5, v1

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    move-object v2, v5

    move-object v5, v2

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    sget-object v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaq:Ljava/util/Comparator;

    .line 3
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Scope;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    const-string v6, "scopes"

    move-object v7, v2

    .line 6
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah:Landroid/accounts/Account;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_1

    const-string v5, "accountName"

    move-object v3, v5

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    .line 7
    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_1
    move-object v5, v1

    const-string v6, "idTokenRequested"

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai:Z

    .line 8
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    move-object v5, v1

    const-string v6, "forceCodeForRefreshToken"

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak:Z

    .line 9
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    move-object v5, v1

    const-string v6, "serverAuthRequested"

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj:Z

    .line 10
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move v2, v5

    move v5, v2

    if-nez v5, :cond_2

    move-object v5, v1

    const-string v6, "serverClientId"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal:Ljava/lang/String;

    .line 12
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move v2, v5

    move v5, v2

    if-nez v5, :cond_3

    move-object v5, v1

    const-string v6, "hostedDomain"

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zam:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 15
    :cond_3
    move-object v5, v1

    .line 16
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 14
    :catch_0
    move-exception v5

    move-object v0, v5

    new-instance v5, Ljava/lang/RuntimeException;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v0

    .line 15
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v1

    throw v5
.end method
