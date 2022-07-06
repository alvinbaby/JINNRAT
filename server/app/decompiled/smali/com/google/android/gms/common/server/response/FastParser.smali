.class public Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zaf:[C

.field private static final zag:[C

.field private static final zah:[C

.field private static final zai:[C

.field private static final zaj:[C

.field private static final zak:[C

.field private static final zam:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zan:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zao:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final zap:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaq:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zar:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zas:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final zat:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai",
            "<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaa:[C

.field private final zab:[C

.field private final zac:[C

.field private final zad:Ljava/lang/StringBuilder;

.field private final zae:Ljava/lang/StringBuilder;

.field private final zal:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x3

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x75

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x6c

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    const/4 v1, 0x3

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x72

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x65

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zag:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x72

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x65

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x22

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zah:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x61

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x73

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x65

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zai:[C

    const/4 v1, 0x5

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x61

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const/16 v3, 0x73

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x65

    aput-char v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x4

    const/16 v3, 0x22

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaj:[C

    const/4 v1, 0x1

    new-array v1, v1, [C

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-char v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zak:[C

    new-instance v1, Lcom/google/android/gms/common/server/response/zaa;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zaa;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zab;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zab;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zac;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zac;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zao:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zad;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zad;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zap:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zae;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zae;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaq:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zaf;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zaf;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zar:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zag;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zag;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zas:Lcom/google/android/gms/common/server/response/zai;

    new-instance v1, Lcom/google/android/gms/common/server/response/zah;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/server/response/zah;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zat:Lcom/google/android/gms/common/server/response/zai;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    move-object v2, v0

    const/16 v3, 0x20

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    move-object v2, v0

    const/16 v3, 0x400

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x20

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x400

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/server/response/FastParser;->zae:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Stack;

    move-object v1, v2

    move-object v2, v1

    .line 3
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    return-void
.end method

.method private static final zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 15
    .param p3    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v11, v3

    const/4 v12, 0x0

    .line 1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v11, v1

    move-object v12, v2

    array-length v12, v12

    .line 2
    invoke-virtual {v11, v12}, Ljava/io/BufferedReader;->mark(I)V

    const/4 v11, 0x0

    move v5, v11

    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move-object v11, v1

    move-object v12, v2

    .line 3
    invoke-virtual {v11, v12}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    move v9, v11

    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    move v11, v6

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v9

    if-ge v11, v12, :cond_8

    move-object v11, v2

    move v12, v8

    .line 4
    aget-char v11, v11, v12

    move v10, v11

    move v11, v10

    .line 5
    invoke-static {v11}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v4

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    move v6, v11

    :goto_2
    move v11, v6

    move-object v12, v4

    array-length v12, v12

    if-ge v11, v12, :cond_6

    move-object v11, v4

    move v12, v6

    .line 6
    aget-char v11, v11, v12

    move v12, v10

    if-ne v11, v12, :cond_5

    :cond_0
    move v11, v10

    const/16 v12, 0x22

    if-ne v11, v12, :cond_3

    move v11, v5

    if-nez v11, :cond_2

    move-object v11, v3

    move-object v12, v2

    const/4 v13, 0x0

    move v14, v8

    .line 9
    invoke-virtual {v11, v12, v13, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v1

    .line 10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->reset()V

    move-object v11, v1

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    .line 11
    invoke-virtual {v11, v12, v13}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v11

    move v11, v7

    if-eqz v11, :cond_1

    move-object v11, v3

    .line 12
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/common/util/JsonUtils;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 13
    :goto_3
    return-object v1

    .line 12
    :cond_1
    move-object v11, v3

    .line 13
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    move v5, v11

    move v11, v7

    move v6, v11

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v11, v6

    move v7, v11

    goto :goto_1

    :cond_3
    move v11, v10

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_4

    move v11, v5

    const/4 v12, 0x1

    xor-int/lit8 v11, v11, 0x1

    move v5, v11

    const/4 v11, 0x1

    move v6, v11

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    move v5, v11

    move v11, v7

    move v6, v11

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    new-instance v11, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v11

    move-object v11, v1

    const-string v12, "Unexpected control character while reading string"

    .line 14
    invoke-direct {v11, v12}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    throw v11

    :cond_7
    new-instance v11, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v11

    move-object v11, v1

    const-string v12, "Unexpected EOF while parsing string"

    .line 15
    invoke-direct {v11, v12}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    throw v11

    :cond_8
    move-object v11, v3

    move-object v12, v2

    const/4 v13, 0x0

    move v14, v9

    .line 7
    invoke-virtual {v11, v12, v13, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v1

    move-object v12, v2

    array-length v12, v12

    .line 8
    invoke-virtual {v11, v12}, Ljava/io/BufferedReader;->mark(I)V

    move v11, v7

    move v6, v11

    goto/16 :goto_0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;Z)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zag(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zah(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private final zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v8, v3

    .line 1
    invoke-virtual {v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v8

    move-object v5, v8

    move-object v8, v1

    move-object v9, v2

    .line 2
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    if-eqz v8, :cond_13

    :goto_0
    move-object v8, v4

    if-eqz v8, :cond_12

    move-object v8, v5

    move-object v9, v4

    .line 3
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-object v6, v8

    move-object v8, v6

    if-nez v8, :cond_0

    move-object v8, v1

    move-object v9, v2

    .line 4
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    goto :goto_0

    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v9, 0x4

    .line 5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v8, v6

    iget v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaa:I

    move v4, v8

    move v8, v4

    packed-switch v8, :pswitch_data_0

    .line 71
    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v2, v8

    move-object v8, v2

    const/16 v9, 0x1e

    .line 70
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v2

    const-string v9, "Invalid field type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    .line 5
    :pswitch_0
    move-object v8, v1

    move-object v9, v2

    .line 22
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    move v4, v8

    move v8, v4

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_1

    move-object v8, v1

    move-object v9, v2

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 23
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v8, 0x0

    move-object v4, v8

    :goto_1
    move-object v8, v3

    move-object v9, v6

    move-object v10, v4

    .line 35
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zar(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V

    :goto_2
    move-object v8, v1

    const/4 v9, 0x4

    .line 55
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v8, v1

    const/4 v9, 0x2

    .line 56
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v8, v1

    move-object v9, v2

    .line 57
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    move v4, v8

    move v8, v4

    sparse-switch v8, :sswitch_data_0

    .line 70
    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v2, v8

    move-object v8, v2

    const/16 v9, 0x37

    .line 69
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v2

    const-string v9, "Expected end of object or field separator, but found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    .line 57
    :sswitch_0
    move-object v8, v1

    move-object v9, v2

    .line 58
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    goto/16 :goto_0

    :sswitch_1
    const/4 v8, 0x0

    move-object v4, v8

    goto/16 :goto_0

    :cond_1
    move v8, v4

    const/16 v9, 0x7b

    if-eq v8, v9, :cond_2

    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    move-object v8, v1

    const-string v9, "Expected start of a map object"

    .line 60
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    :cond_2
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v9, 0x1

    .line 24
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-instance v8, Ljava/util/HashMap;

    move-object v4, v8

    move-object v8, v4

    .line 25
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :cond_3
    :goto_3
    move-object v8, v1

    move-object v9, v2

    .line 26
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_3

    .line 69
    :sswitch_2
    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    move-object v8, v1

    const-string v9, "Unexpected EOF"

    .line 64
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    .line 26
    :sswitch_3
    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    move-object v10, v1

    iget-object v10, v10, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 27
    invoke-static {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v1

    move-object v9, v2

    .line 28
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_4

    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v2, v8

    move-object v8, v7

    .line 61
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    const-string v8, "No map value found for key "

    move-object v3, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_14

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    :goto_4
    move-object v8, v2

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    throw v8

    :cond_4
    move-object v8, v1

    move-object v9, v2

    .line 29
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    const/16 v9, 0x22

    if-eq v8, v9, :cond_5

    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v2, v8

    move-object v8, v7

    .line 62
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    const-string v8, "Expected String value for key "

    move-object v3, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_17

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    :goto_5
    move-object v8, v2

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    throw v8

    :cond_5
    move-object v8, v4

    move-object v9, v7

    move-object v10, v2

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    .line 30
    invoke-static {v10, v11, v12, v13}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v8, v1

    move-object v9, v2

    .line 32
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    move v7, v8

    move v8, v7

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_3

    move v8, v7

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_15

    move-object v8, v1

    const/4 v9, 0x1

    .line 34
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_1

    :sswitch_4
    move-object v8, v1

    const/4 v9, 0x1

    .line 33
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_1

    :pswitch_1
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_6

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    .line 6
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zab(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_6
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 7
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V

    goto/16 :goto_2

    :pswitch_2
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_7

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zas:Lcom/google/android/gms/common/server/response/zai;

    .line 8
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zad(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_7
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 9
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V

    goto/16 :goto_2

    :pswitch_3
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_8

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    .line 10
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaf(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_8
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 11
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;)J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zae(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V

    goto/16 :goto_2

    :pswitch_4
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_9

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zao:Lcom/google/android/gms/common/server/response/zai;

    .line 12
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zah(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_9
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 13
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zag(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V

    goto/16 :goto_2

    :pswitch_5
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_a

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zap:Lcom/google/android/gms/common/server/response/zai;

    .line 14
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaj(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_a
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 15
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)D

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zai(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V

    goto/16 :goto_2

    :pswitch_6
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_b

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zat:Lcom/google/android/gms/common/server/response/zai;

    .line 16
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_b
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 17
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zak(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V

    goto/16 :goto_2

    :pswitch_7
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_c

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zaq:Lcom/google/android/gms/common/server/response/zai;

    .line 18
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zan(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_c
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    const/4 v12, 0x0

    .line 19
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;Z)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zam(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V

    goto/16 :goto_2

    :pswitch_8
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_d

    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    sget-object v12, Lcom/google/android/gms/common/server/response/FastParser;->zar:Lcom/google/android/gms/common/server/response/zai;

    .line 20
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zap(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_d
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    .line 21
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zao(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_9
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/server/response/FastParser;->zae:Ljava/lang/StringBuilder;

    sget-object v14, Lcom/google/android/gms/common/server/response/FastParser;->zak:[C

    .line 49
    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-static {v10}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafe(Ljava/lang/String;)[B

    move-result-object v10

    .line 51
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto/16 :goto_2

    :pswitch_a
    move-object v8, v6

    iget-boolean v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v8, :cond_f

    move-object v8, v1

    move-object v9, v2

    .line 36
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    move v4, v8

    move v8, v4

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_e

    move-object v8, v1

    move-object v9, v2

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 37
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    move-object v8, v3

    move-object v9, v6

    move-object v10, v6

    iget-object v10, v10, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    const/4 v11, 0x0

    .line 38
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_e
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v9, 0x5

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move v8, v4

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_16

    move-object v8, v3

    move-object v9, v6

    move-object v10, v6

    iget-object v10, v10, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    move-object v11, v1

    move-object v12, v2

    move-object v13, v6

    .line 40
    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v11

    .line 41
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_f
    move-object v8, v1

    move-object v9, v2

    .line 42
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    move v4, v8

    move v8, v4

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_10

    move-object v8, v1

    move-object v9, v2

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 43
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    move-object v8, v3

    move-object v9, v6

    move-object v10, v6

    iget-object v10, v10, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    const/4 v11, 0x0

    .line 44
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    goto/16 :goto_2

    :cond_10
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v9, 0x1

    .line 45
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move v8, v4

    const/16 v9, 0x7b

    if-eq v8, v9, :cond_11

    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    move-object v8, v1

    const-string v9, "Expected start of object"

    .line 66
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    :cond_11
    move-object v8, v6

    .line 46
    :try_start_0
    invoke-virtual {v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaf()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v8

    move-object v4, v8

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    .line 47
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v8

    move-object v8, v6

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    move-object v7, v8

    move-object v8, v3

    move-object v9, v6

    move-object v10, v7

    move-object v11, v4

    .line 48
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :pswitch_b
    move-object v8, v3

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/server/response/FastParser;->zae:Ljava/lang/StringBuilder;

    sget-object v14, Lcom/google/android/gms/common/server/response/FastParser;->zak:[C

    .line 52
    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-static {v10}, Lcom/google/android/gms/common/util/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v10

    .line 54
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto/16 :goto_2

    :cond_12
    move-object v8, v1

    const/4 v9, 0x1

    .line 59
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v8, 0x1

    move v1, v8

    .line 71
    :goto_6
    return v1

    .line 59
    :cond_13
    move-object v8, v1

    const/4 v9, 0x1

    .line 71
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v8, 0x0

    move v1, v8

    goto :goto_6

    .line 64
    :cond_14
    new-instance v8, Ljava/lang/String;

    move-object v1, v8

    move-object v8, v1

    move-object v9, v3

    .line 61
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_0
    move-exception v8

    move-object v1, v8

    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v2, v8

    move-object v8, v2

    const-string v9, "Error instantiating inner object"

    move-object v10, v1

    .line 67
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v2

    throw v8

    :cond_15
    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v2, v8

    move-object v8, v2

    const/16 v9, 0x30

    .line 63
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v2

    const-string v9, "Unexpected character while parsing string map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v2

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    :cond_16
    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v8

    move-object v8, v1

    const-string v9, "Expected array start"

    .line 65
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    throw v8

    :catch_1
    move-exception v8

    move-object v1, v8

    new-instance v8, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v2, v8

    move-object v8, v2

    const-string v9, "Error instantiating inner object"

    move-object v10, v1

    .line 68
    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v2

    throw v8

    :cond_17
    new-instance v8, Ljava/lang/String;

    move-object v1, v8

    move-object v8, v1

    move-object v9, v3

    .line 62
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch

    .line 26
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x22 -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private final zaj(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v4, 0x2

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    move-object v4, v1

    .line 2
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v3

    move v2, v3

    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 11
    new-instance v3, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v1, v3

    move-object v3, v1

    const/16 v4, 0x13

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v1

    const-string v4, "Unexpected token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    throw v3

    .line 2
    :sswitch_0
    move-object v3, v0

    const/4 v4, 0x2

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v3, 0x0

    move-object v0, v3

    .line 12
    :goto_0
    return-object v0

    .line 3
    :sswitch_1
    move-object v3, v0

    const/4 v4, 0x2

    .line 4
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v3, v0

    const/4 v4, 0x1

    .line 5
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v3, v0

    const/4 v4, 0x5

    .line 6
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :sswitch_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v4, 0x3

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 8
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x3

    .line 9
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v3, v0

    move-object v4, v1

    .line 10
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v3

    move-object v3, v0

    const-string v4, "Expected key/value separator"

    .line 11
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    throw v3

    .line 12
    :cond_0
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 2
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x5d -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private final zak(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const/16 v8, 0x400

    .line 1
    invoke-virtual {v7, v8}, Ljava/io/BufferedReader;->mark(I)V

    move-object v7, v0

    move-object v8, v1

    .line 2
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move-object v7, v1

    .line 29
    invoke-virtual {v7}, Ljava/io/BufferedReader;->reset()V

    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 30
    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v7

    :cond_0
    :goto_0
    move-object v7, v0

    move-object v8, v1

    .line 31
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    move v2, v7

    move v7, v2

    sparse-switch v7, :sswitch_data_1

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v1, v7

    move-object v7, v1

    const/16 v8, 0x12

    .line 35
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v1

    const-string v8, "Unexpected token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :sswitch_0
    move-object v7, v0

    const/4 v8, 0x2

    .line 32
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v7, 0x0

    move-object v0, v7

    .line 34
    :goto_1
    return-object v0

    .line 32
    :sswitch_1
    move-object v7, v0

    const/4 v8, 0x2

    .line 33
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v7, v0

    move-object v8, v1

    .line 34
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    :sswitch_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v8, 0x1

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v1

    const/16 v8, 0x20

    .line 4
    invoke-virtual {v7, v8}, Ljava/io/BufferedReader;->mark(I)V

    move-object v7, v0

    move-object v8, v1

    .line 5
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    move v2, v7

    move v7, v2

    const/16 v8, 0x7d

    if-ne v7, v8, :cond_1

    move-object v7, v0

    const/4 v8, 0x1

    .line 6
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto :goto_0

    :cond_1
    move v7, v2

    const/16 v8, 0x22

    if-ne v7, v8, :cond_13

    move-object v7, v1

    .line 7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->reset()V

    move-object v7, v0

    move-object v8, v1

    .line 8
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    move-object v7, v0

    move-object v8, v1

    .line 9
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v0

    const/4 v8, 0x1

    .line 10
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_0

    :sswitch_3
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v8, 0x5

    .line 12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v1

    const/16 v8, 0x20

    .line 13
    invoke-virtual {v7, v8}, Ljava/io/BufferedReader;->mark(I)V

    move-object v7, v0

    move-object v8, v1

    .line 14
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_3

    move-object v7, v0

    const/4 v8, 0x5

    .line 15
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_0

    :cond_3
    move-object v7, v1

    .line 16
    invoke-virtual {v7}, Ljava/io/BufferedReader;->reset()V

    const/4 v7, 0x0

    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x1

    move v4, v7

    :goto_2
    move v7, v4

    if-lez v7, :cond_e

    move-object v7, v0

    move-object v8, v1

    .line 17
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    move v5, v7

    move v7, v5

    if-nez v7, :cond_4

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected EOF while parsing array"

    .line 19
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_4
    move v7, v5

    .line 18
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected control character while reading array"

    .line 20
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_5
    move v7, v5

    const/16 v8, 0x22

    if-ne v7, v8, :cond_d

    move v7, v2

    if-nez v7, :cond_c

    move v7, v3

    const/4 v8, 0x1

    xor-int/lit8 v7, v7, 0x1

    move v6, v7

    const/16 v7, 0x22

    move v5, v7

    :goto_3
    move v7, v5

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_b

    move v7, v6

    if-nez v7, :cond_a

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    const/16 v7, 0x5b

    move v3, v7

    :goto_4
    move v7, v3

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_9

    move v7, v6

    if-nez v7, :cond_8

    move v7, v5

    const/4 v8, -0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_5
    move v7, v3

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_7

    move v7, v6

    if-eqz v7, :cond_6

    move v7, v2

    const/4 v8, 0x1

    xor-int/lit8 v7, v7, 0x1

    move v2, v7

    move v7, v6

    move v3, v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    move v2, v7

    move v7, v6

    move v3, v7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    move v2, v7

    move v7, v6

    move v3, v7

    goto :goto_2

    :cond_8
    move v7, v5

    move v4, v7

    goto :goto_5

    :cond_9
    move v7, v5

    move v4, v7

    goto :goto_5

    :cond_a
    const/16 v7, 0x5b

    move v3, v7

    move v7, v4

    move v5, v7

    goto :goto_4

    :cond_b
    move v7, v5

    move v3, v7

    move v7, v4

    move v5, v7

    goto :goto_4

    :cond_c
    const/16 v7, 0x22

    move v5, v7

    move v7, v3

    move v6, v7

    goto :goto_3

    :cond_d
    move v7, v3

    move v6, v7

    goto :goto_3

    :cond_e
    move-object v7, v0

    const/4 v8, 0x5

    .line 21
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_0

    :sswitch_4
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 23
    invoke-virtual {v7, v8}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_f

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected EOF while parsing string"

    .line 24
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_f
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    move v3, v7

    const/4 v7, 0x0

    move v2, v7

    :cond_10
    move v7, v3

    const/16 v8, 0x22

    if-ne v7, v8, :cond_14

    move v7, v2

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v2, v7

    const/16 v7, 0x22

    move v4, v7

    :goto_6
    move v7, v4

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_12

    move v7, v2

    const/4 v8, 0x1

    xor-int/lit8 v7, v7, 0x1

    move v2, v7

    :goto_7
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 25
    invoke-virtual {v7, v8}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_11

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected EOF while parsing string"

    .line 27
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_11
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    move v3, v7

    move v7, v3

    .line 26
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v7

    if-eqz v7, :cond_10

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected control character while reading string"

    .line 28
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    .line 26
    :cond_12
    const/4 v7, 0x0

    move v2, v7

    goto :goto_7

    .line 28
    :sswitch_5
    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Missing value"

    .line 22
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_13
    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v1, v7

    move-object v7, v1

    const/16 v8, 0x12

    .line 11
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v1

    const-string v8, "Unexpected token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_14
    move v7, v3

    move v4, v7

    goto :goto_6

    .line 2
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x2c -> :sswitch_5
        0x5b -> :sswitch_3
        0x7b -> :sswitch_2
    .end sparse-switch

    .line 31
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private final zal(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private final zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/google/android/gms/common/server/response/zai",
            "<TO;>;)",
            "Ljava/util/ArrayList",
            "<TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v4

    move v3, v4

    move v4, v3

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 2
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v4, 0x0

    move-object v0, v4

    .line 10
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move v4, v3

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_1

    new-instance v4, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "Expected start of array"

    .line 3
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v5, 0x5

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    move-object v4, v3

    .line 5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    :sswitch_0
    move-object v4, v1

    const/16 v5, 0x400

    .line 6
    invoke-virtual {v4, v5}, Ljava/io/BufferedReader;->mark(I)V

    move-object v4, v0

    move-object v5, v1

    .line 7
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move-object v4, v1

    .line 8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->reset()V

    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    .line 9
    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/common/server/response/zai;->zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :sswitch_1
    new-instance v4, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "Unexpected EOF"

    .line 11
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :sswitch_2
    move-object v4, v0

    const/4 v5, 0x5

    .line 10
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 7
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2c -> :sswitch_0
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method private final zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 9
    .param p4    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    .line 1
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Expected string"

    .line 4
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :sswitch_0
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 2
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v5, 0x0

    move-object v0, v5

    .line 3
    :goto_0
    return-object v0

    .line 2
    :sswitch_1
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    .line 3
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method private final zao(Ljava/io/BufferedReader;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 1
    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v7

    move v4, v7

    move v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 7
    :goto_0
    return v0

    .line 1
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    move-object v5, v7

    move v7, v4

    if-lez v7, :cond_a

    move-object v7, v5

    const/4 v8, 0x0

    aget-char v7, v7, v8

    move v1, v7

    move v7, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_b

    const/high16 v7, -0x80000000

    move v0, v7

    :goto_1
    move v7, v1

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    move v1, v7

    :goto_2
    move v7, v1

    move v8, v4

    if-ge v7, v8, :cond_7

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    move-object v7, v5

    move v8, v1

    aget-char v7, v7, v8

    const/16 v8, 0xa

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v2, v7

    move v7, v2

    if-gez v7, :cond_1

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected non-digit character"

    .line 3
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_1
    move v7, v2

    neg-int v7, v7

    move v2, v7

    :goto_3
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_5

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    move-object v7, v5

    move v8, v3

    .line 4
    aget-char v7, v7, v8

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v3, v7

    move v7, v3

    if-gez v7, :cond_2

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Unexpected non-digit character"

    .line 5
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_2
    move v7, v2

    const v8, -0xccccccc

    if-ge v7, v8, :cond_3

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Number too large"

    .line 6
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_3
    move v7, v2

    const/16 v8, 0xa

    mul-int/lit8 v7, v7, 0xa

    move v2, v7

    move v7, v2

    move v8, v0

    move v9, v3

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "Number too large"

    .line 7
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_4
    move v7, v2

    move v8, v3

    sub-int/2addr v7, v8

    move v2, v7

    move v7, v6

    move v3, v7

    goto :goto_3

    :cond_5
    move v7, v1

    if-eqz v7, :cond_6

    move v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    move v7, v2

    move v0, v7

    :goto_4
    move v7, v0

    move v0, v7

    goto/16 :goto_0

    :cond_6
    move v7, v2

    neg-int v7, v7

    move v0, v7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    move v2, v7

    move v7, v1

    move v3, v7

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    move v1, v7

    goto/16 :goto_2

    :cond_9
    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "No digits to parse"

    .line 8
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_a
    new-instance v7, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "No number to parse"

    .line 9
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_b
    const v7, -0x7fffffff

    move v0, v7

    goto/16 :goto_1
.end method

.method private final zap(Ljava/io/BufferedReader;)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    move-object/from16 v20, v0

    .line 1
    invoke-direct/range {v18 .. v20}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v18

    move/from16 v9, v18

    move/from16 v18, v9

    if-nez v18, :cond_0

    const-wide/16 v18, 0x0

    move-wide/from16 v3, v18

    .line 7
    :goto_0
    return-wide v3

    .line 1
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    move/from16 v18, v9

    if-lez v18, :cond_a

    move-object/from16 v18, v10

    const/16 v19, 0x0

    aget-char v18, v18, v19

    move/from16 v3, v18

    move/from16 v18, v3

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const-wide/high16 v18, -0x8000000000000000L

    move-wide/from16 v5, v18

    :goto_1
    move/from16 v18, v3

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    move/from16 v3, v18

    :goto_2
    move/from16 v18, v3

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    move/from16 v18, v3

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v4, v18

    move-object/from16 v18, v10

    move/from16 v19, v3

    aget-char v18, v18, v19

    const/16 v19, 0xa

    .line 2
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    move/from16 v7, v18

    move/from16 v18, v7

    if-gez v18, :cond_1

    new-instance v18, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    const-string v19, "Unexpected non-digit character"

    .line 3
    invoke-direct/range {v18 .. v19}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    throw v18

    :cond_1
    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v11, v18

    move-wide/from16 v18, v11

    move-wide/from16 v7, v18

    :goto_3
    move/from16 v18, v4

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move/from16 v18, v4

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v13, v18

    move-object/from16 v18, v10

    move/from16 v19, v4

    .line 4
    aget-char v18, v18, v19

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    move/from16 v4, v18

    move/from16 v18, v4

    if-gez v18, :cond_2

    new-instance v18, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    const-string v19, "Unexpected non-digit character"

    .line 5
    invoke-direct/range {v18 .. v19}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    throw v18

    :cond_2
    move-wide/from16 v18, v7

    const-wide v20, -0xcccccccccccccccL

    cmp-long v18, v18, v20

    if-gez v18, :cond_3

    new-instance v18, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    const-string v19, "Number too large"

    .line 6
    invoke-direct/range {v18 .. v19}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    throw v18

    :cond_3
    move-wide/from16 v18, v7

    const-wide/16 v20, 0xa

    mul-long v18, v18, v20

    move-wide/from16 v14, v18

    move/from16 v18, v4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    move-wide/from16 v18, v14

    move-wide/from16 v20, v5

    move-wide/from16 v22, v16

    add-long v20, v20, v22

    cmp-long v18, v18, v20

    if-gez v18, :cond_4

    new-instance v18, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    const-string v19, "Number too large"

    .line 7
    invoke-direct/range {v18 .. v19}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    throw v18

    :cond_4
    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    sub-long v18, v18, v20

    move-wide/from16 v11, v18

    move-wide/from16 v18, v11

    move-wide/from16 v7, v18

    move/from16 v18, v13

    move/from16 v4, v18

    goto/16 :goto_3

    :cond_5
    move/from16 v18, v3

    if-eqz v18, :cond_6

    move/from16 v18, v4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    move-wide/from16 v18, v7

    move-wide/from16 v9, v18

    :goto_4
    move-wide/from16 v18, v9

    move-wide/from16 v3, v18

    goto/16 :goto_0

    :cond_6
    move-wide/from16 v18, v7

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v5, v18

    move-wide/from16 v18, v5

    move-wide/from16 v9, v18

    goto :goto_4

    :cond_7
    const-wide/16 v18, 0x0

    move-wide/from16 v7, v18

    move/from16 v18, v3

    move/from16 v4, v18

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x0

    move/from16 v3, v18

    goto/16 :goto_2

    :cond_9
    new-instance v18, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    const-string v19, "No digits to parse"

    .line 8
    invoke-direct/range {v18 .. v19}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    throw v18

    :cond_a
    new-instance v18, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    const-string v19, "No number to parse"

    .line 9
    invoke-direct/range {v18 .. v19}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    throw v18

    :cond_b
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v5, v18

    goto/16 :goto_1
.end method

.method private final zaq(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v4

    move v1, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 2
    :goto_0
    return-object v0

    .line 1
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    move-object v2, v4

    new-instance v4, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    const/4 v6, 0x0

    move v7, v1

    .line 2
    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v2

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method private final zar(Ljava/io/BufferedReader;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v4

    move v3, v4

    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 4
    new-instance v4, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v1, v4

    move-object v4, v1

    const/16 v5, 0x13

    .line 7
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v1

    const-string v5, "Unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    .line 1
    :sswitch_0
    move v4, v2

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zah:[C

    move-object v2, v4

    :goto_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    .line 2
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v4, 0x1

    move v0, v4

    .line 6
    :goto_1
    return v0

    .line 2
    :cond_0
    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zag:[C

    move-object v2, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v0

    move-object v5, v1

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 3
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    :sswitch_2
    move v4, v2

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "No boolean value found in string"

    .line 5
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_1
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    .line 6
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;Z)Z

    move-result v4

    move v0, v4

    goto :goto_1

    :sswitch_3
    move v4, v2

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zaj:[C

    move-object v2, v4

    :goto_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    .line 4
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 7
    :cond_2
    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zai:[C

    move-object v2, v4

    goto :goto_2

    .line 1
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zas(Ljava/io/BufferedReader;)F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 1
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v3

    move v1, v3

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 2
    :goto_0
    return v0

    .line 1
    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    const/4 v5, 0x0

    move v6, v1

    .line 2
    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private final zat(Ljava/io/BufferedReader;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v4

    move v2, v4

    move v4, v2

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 2
    :goto_0
    return-wide v1

    .line 1
    :cond_0
    new-instance v4, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    const/4 v6, 0x0

    move v7, v2

    .line 2
    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v3

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method private final zau(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v4

    move v1, v4

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 2
    :goto_0
    return-object v0

    .line 1
    :cond_0
    new-instance v4, Ljava/math/BigDecimal;

    move-object v2, v4

    new-instance v4, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    const/4 v6, 0x0

    move v7, v1

    .line 2
    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v2

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method private final zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Ljava/util/ArrayList;

    move-object v3, v6

    move-object v6, v3

    .line 1
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    move-object v7, v1

    .line 2
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v6

    move v4, v6

    move v6, v4

    sparse-switch v6, :sswitch_data_0

    .line 14
    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v1, v6

    move-object v6, v1

    const/16 v7, 0x13

    .line 18
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v1

    const-string v7, "Unexpected token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    .line 2
    :sswitch_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v7, 0x1

    .line 3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    move-object v6, v2

    .line 4
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaf()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    .line 5
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v6

    move v5, v6

    move v6, v5

    if-eqz v6, :cond_1

    move-object v6, v3

    move-object v7, v4

    .line 6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    move-object v6, v0

    move-object v7, v1

    .line 7
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v6

    move v4, v6

    move v6, v4

    sparse-switch v6, :sswitch_data_1

    .line 16
    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v1, v6

    move-object v6, v1

    const/16 v7, 0x13

    .line 14
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v1

    const-string v7, "Unexpected token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    .line 7
    :sswitch_1
    move-object v6, v0

    move-object v7, v1

    .line 8
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v6

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_0

    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v6

    move-object v6, v0

    const-string v7, "Expected start of next object in array"

    .line 13
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v7, 0x1

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :sswitch_2
    move-object v6, v0

    const/4 v7, 0x5

    .line 12
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v6, v3

    move-object v0, v6

    .line 17
    :goto_1
    return-object v0

    .line 12
    :cond_1
    move-object v6, v3

    move-object v0, v6

    goto :goto_1

    :sswitch_3
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 15
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    move-object v6, v0

    const/4 v7, 0x5

    .line 16
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    .line 18
    :catch_0
    move-exception v6

    move-object v0, v6

    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v6

    move-object v6, v1

    const-string v7, "Error instantiating inner object"

    move-object v8, v0

    .line 11
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v1

    throw v6

    :catch_1
    move-exception v6

    move-object v0, v6

    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v6

    move-object v6, v1

    const-string v7, "Error instantiating inner object"

    move-object v8, v0

    .line 10
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v1

    throw v6

    :sswitch_4
    move-object v6, v0

    const/4 v7, 0x5

    .line 17
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    move-object v6, v3

    move-object v0, v6

    goto :goto_1

    .line 2
    nop

    :sswitch_data_0
    .sparse-switch
        0x5d -> :sswitch_4
        0x6e -> :sswitch_3
        0x7b -> :sswitch_0
    .end sparse-switch

    .line 7
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method private final zaw(Ljava/io/BufferedReader;)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 1
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    .line 2
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 3
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private final zax(Ljava/io/BufferedReader;[C)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    .line 1
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v5

    move v3, v5

    move v5, v3

    if-nez v5, :cond_0

    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Unexpected EOF"

    .line 2
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_0
    move v5, v3

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Missing value"

    .line 3
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_1
    move v5, v3

    const/16 v6, 0x6e

    if-ne v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v1

    sget-object v7, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 4
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 v5, 0x0

    move v0, v5

    .line 20
    :goto_0
    return v0

    .line 4
    :cond_2
    move-object v5, v1

    const/16 v6, 0x400

    .line 5
    invoke-virtual {v5, v6}, Ljava/io/BufferedReader;->mark(I)V

    move v5, v3

    const/16 v6, 0x22

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    move v0, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v0

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_a

    move-object v5, v1

    move-object v6, v2

    move v7, v0

    const/4 v8, 0x1

    .line 6
    invoke-virtual {v5, v6, v7, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    move-object v5, v2

    move v6, v0

    .line 7
    aget-char v5, v5, v6

    move v4, v5

    move v5, v4

    .line 8
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Unexpected control character while reading string"

    .line 9
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_3
    move v5, v4

    const/16 v6, 0x22

    if-ne v5, v6, :cond_5

    move v5, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    move v3, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v1

    .line 10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->reset()V

    move-object v5, v1

    move v6, v0

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 11
    invoke-virtual {v5, v6, v7}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v5

    move v5, v0

    move v0, v5

    goto :goto_0

    :cond_5
    move v5, v4

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_6

    move v5, v3

    const/4 v6, 0x1

    xor-int/lit8 v5, v5, 0x1

    move v3, v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move v3, v5

    goto :goto_2

    :cond_7
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    .line 12
    aput-char v7, v5, v6

    const/4 v5, 0x1

    move v0, v5

    :goto_3
    move v5, v0

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_a

    move-object v5, v1

    move-object v6, v2

    move v7, v0

    const/4 v8, 0x1

    .line 13
    invoke-virtual {v5, v6, v7, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    move-object v5, v2

    move v6, v0

    .line 14
    aget-char v5, v5, v6

    move v3, v5

    move v5, v3

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_8

    move v5, v3

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_8

    move v5, v3

    .line 15
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v5, v2

    move v6, v0

    aget-char v5, v5, v6

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_9

    :cond_8
    move-object v5, v1

    .line 18
    invoke-virtual {v5}, Ljava/io/BufferedReader;->reset()V

    move-object v5, v1

    move v6, v0

    const/4 v7, -0x1

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    .line 19
    invoke-virtual {v5, v6, v7}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v5

    move-object v5, v2

    move v6, v0

    const/4 v7, 0x0

    .line 20
    aput-char v7, v5, v6

    move v5, v0

    move v0, v5

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v5, v0

    move-object v6, v2

    array-length v6, v6

    if-ne v5, v6, :cond_b

    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Absurdly long value"

    .line 16
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_b
    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Unexpected EOF"

    .line 17
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5
.end method

.method private final zay(Ljava/io/BufferedReader;[C)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move-object v6, v2

    array-length v6, v6

    move v4, v6

    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_3

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    const/4 v8, 0x0

    move v9, v4

    move v10, v3

    sub-int/2addr v9, v10

    .line 1
    invoke-virtual {v6, v7, v8, v9}, Ljava/io/BufferedReader;->read([CII)I

    move-result v6

    move v5, v6

    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    move v8, v3

    add-int/2addr v7, v8

    .line 2
    aget-char v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    move v8, v4

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_0

    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v6

    move-object v6, v0

    const-string v7, "Unexpected character"

    .line 3
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    move v7, v5

    add-int/2addr v6, v7

    move v3, v6

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v6

    move-object v6, v0

    const-string v7, "Unexpected EOF"

    .line 4
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    :cond_3
    return-void
.end method

.method private final zaz(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    .line 1
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v2, v4

    move-object v4, v2

    const/16 v5, 0x2e

    .line 2
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v2

    const-string v5, "Expected state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v2

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v2

    const-string v5, " but had empty stack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    .line 3
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    move v4, v0

    move v5, v1

    if-eq v4, v5, :cond_1

    new-instance v4, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    const/16 v5, 0x2e

    .line 4
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Expected state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    const-string v5, " but had "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    throw v4

    :cond_1
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 9
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/server/response/FastJsonResponse;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Ljava/io/BufferedReader;

    move-object v3, v5

    new-instance v5, Ljava/io/InputStreamReader;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 1
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v3

    move-object v6, v4

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v6, 0x0

    .line 2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v5

    move v1, v5

    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 16
    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v2, v5

    move-object v5, v2

    const/16 v6, 0x13

    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v2

    const-string v6, "Unexpected token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catch_0
    move-exception v5

    move-object v0, v5

    :try_start_1
    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v0

    .line 18
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v1

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v3

    .line 14
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move-object v5, v0

    .line 19
    throw v5

    .line 3
    :sswitch_0
    move-object v5, v0

    :try_start_3
    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v6, 0x1

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    .line 5
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v5

    :goto_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 13
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v3

    .line 14
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 15
    :goto_2
    return-void

    .line 14
    :sswitch_1
    move-object v5, v0

    :try_start_5
    iget-object v5, v5, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v6, 0x5

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    .line 8
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    move v4, v5

    move v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Object array response class must have a single Field"

    .line 9
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_0
    move-object v5, v1

    .line 10
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-object v1, v5

    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    .line 11
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v4, v5

    move-object v5, v2

    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    move-object v8, v4

    .line 12
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 19
    :sswitch_2
    new-instance v5, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "No data to parse"

    .line 16
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    :catch_1
    move-exception v5

    const-string v5, "FastParser"

    const-string v6, "Failed to close reader while parsing."

    .line 15
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :catch_2
    move-exception v5

    const-string v5, "FastParser"

    const-string v6, "Failed to close reader while parsing."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method
