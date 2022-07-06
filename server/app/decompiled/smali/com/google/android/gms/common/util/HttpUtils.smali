.class public Lcom/google/android/gms/common/util/HttpUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zza:Ljava/util/regex/Pattern;

    const-string v0, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzb:Ljava/util/regex/Pattern;

    const-string v0, "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/HttpUtils;->zzc:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0    # Ljava/net/URI;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    .line 2
    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object v6, v0

    if-eqz v6, :cond_5

    move-object v6, v0

    .line 3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/util/HashMap;

    move-object v2, v6

    move-object v6, v2

    .line 4
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/Scanner;

    move-object v3, v6

    move-object v6, v3

    move-object v7, v0

    .line 5
    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "&"

    .line 6
    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v6

    :goto_0
    move-object v6, v3

    .line 7
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    .line 8
    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object v6, v0

    .line 9
    array-length v6, v6

    move v4, v6

    move v6, v4

    if-eqz v6, :cond_0

    move v6, v4

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v0, v6

    move-object v6, v0

    const-string v7, "bad parameter"

    .line 13
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    .line 10
    aget-object v6, v6, v7

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/common/util/HttpUtils;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move-object v6, v0

    const/4 v7, 0x1

    .line 11
    aget-object v6, v6, v7

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/common/util/HttpUtils;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :goto_1
    move-object v6, v2

    move-object v7, v5

    move-object v8, v0

    .line 12
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v6, v2

    move-object v0, v6

    :goto_2
    move-object v6, v0

    move-object v0, v6

    return-object v0

    :cond_4
    move-object v6, v2

    move-object v0, v6

    goto :goto_2

    :cond_5
    move-object v6, v2

    move-object v0, v6

    goto :goto_2
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, "ISO-8859-1"

    move-object v1, v2

    :cond_0
    move-object v2, v0

    move-object v3, v1

    .line 1
    :try_start_0
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v1

    throw v2
.end method
