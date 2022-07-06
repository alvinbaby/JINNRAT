.class public final Lcom/google/android/gms/common/util/JsonUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zza:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzb:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_c

    :cond_0
    move-object v4, v0

    if-eqz v4, :cond_1

    move-object v4, v1

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    .line 20
    :goto_0
    return v0

    .line 4294967295
    :cond_2
    move-object v4, v0

    .line 1
    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    move-object v4, v1

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    move-object v4, v0

    .line 11
    check-cast v4, Lorg/json/JSONObject;

    move-object v0, v4

    move-object v4, v1

    .line 12
    check-cast v4, Lorg/json/JSONObject;

    move-object v1, v4

    move-object v4, v0

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 14
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :cond_4
    move-object v4, v2

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v2

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    .line 17
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_5
    move-object v4, v3

    .line 18
    :try_start_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    move-object v6, v3

    .line 19
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_7
    move-object v4, v0

    .line 2
    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_b

    move-object v4, v1

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_b

    move-object v4, v0

    .line 4
    check-cast v4, Lorg/json/JSONArray;

    move-object v2, v4

    move-object v4, v1

    .line 5
    check-cast v4, Lorg/json/JSONArray;

    move-object v1, v4

    move-object v4, v2

    .line 6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v4, v5, :cond_a

    const/4 v4, 0x0

    move v0, v4

    :goto_1
    move v4, v0

    move-object v5, v2

    .line 7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    move-object v4, v2

    move v5, v0

    .line 8
    :try_start_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    move v6, v0

    .line 9
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 10
    invoke-static {v4, v5}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v3, v4

    move v4, v3

    if-eqz v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_b
    move-object v4, v0

    move-object v5, v1

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/common/util/JsonUtils;->zzb:Ljava/util/regex/Pattern;

    move-object v4, v0

    .line 2
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x0

    move-object v1, v3

    :goto_0
    move-object v3, v2

    .line 3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v1, v3

    move-object v3, v1

    .line 4
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    move-object v3, v2

    .line 5
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 12
    :sswitch_0
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\b"

    .line 13
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    .line 5
    :sswitch_1
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\\\\\"

    .line 6
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_2
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\/"

    .line 7
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\\\\""

    .line 8
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_4
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\r"

    .line 9
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_5
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\f"

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_6
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\n"

    .line 11
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_7
    move-object v3, v2

    move-object v4, v1

    const-string v5, "\\\\t"

    .line 12
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    .line 13
    :cond_1
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    move-object v0, v3

    .line 15
    :goto_1
    return-object v0

    .line 13
    :cond_2
    move-object v3, v2

    move-object v4, v1

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    .line 15
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    move-object v0, v3

    goto :goto_1

    .line 5
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_3
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v0

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/util/zzc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    sget-object v3, Lcom/google/android/gms/common/util/JsonUtils;->zza:Ljava/util/regex/Pattern;

    move-object v4, v1

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    move-object v3, v2

    .line 4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v0, v3

    move-object v3, v0

    .line 5
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    move-object v3, v2

    .line 6
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 17
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v0, v3

    move-object v3, v0

    const-string v4, "Found an escaped character that should never be."

    .line 15
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    throw v3

    .line 6
    :sswitch_0
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\t"

    .line 7
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\r"

    .line 8
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_2
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\n"

    .line 9
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\u000c"

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_4
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\u0008"

    .line 11
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_5
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\\\\"

    .line 12
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_6
    move-object v3, v2

    move-object v4, v0

    const-string v5, "/"

    .line 13
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :sswitch_7
    move-object v3, v2

    move-object v4, v0

    const-string v5, "\""

    .line 14
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    move-object v3, v1

    move-object v0, v3

    .line 17
    :goto_1
    return-object v0

    .line 14
    :cond_2
    move-object v3, v2

    move-object v4, v0

    .line 16
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v0

    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 15
    :cond_3
    move-object v3, v0

    move-object v0, v3

    goto :goto_1

    .line 6
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
        0x62 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method
