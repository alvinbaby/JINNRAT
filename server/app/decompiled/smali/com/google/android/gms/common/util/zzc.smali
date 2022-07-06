.class public final Lcom/google/android/gms/common/util/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\\\u[0-9a-fA-F]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzc;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    move-object v0, p0

    move-object v5, v0

    .line 1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/android/gms/common/util/zzc;->zza:Ljava/util/regex/Pattern;

    move-object v6, v0

    .line 2
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move-object v2, v5

    const/4 v5, 0x0

    move-object v1, v5

    :goto_0
    move-object v5, v2

    .line 3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v1, v5

    move-object v5, v1

    .line 4
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    move-object v5, v2

    .line 5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    const/4 v6, 0x2

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    new-instance v5, Ljava/lang/String;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    .line 7
    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    move-object v5, v2

    move-object v6, v1

    move-object v7, v4

    .line 8
    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v0, v5

    .line 10
    :goto_1
    return-object v0

    .line 8
    :cond_2
    move-object v5, v2

    move-object v6, v1

    .line 9
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v1

    .line 10
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    :cond_3
    move-object v5, v0

    move-object v0, v5

    goto :goto_1
.end method
