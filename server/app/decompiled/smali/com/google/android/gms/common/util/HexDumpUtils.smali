.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .locals 14
    .param p0    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v0

    if-eqz v10, :cond_0

    move-object v10, v0

    array-length v10, v10

    move v4, v10

    move v10, v4

    if-eqz v10, :cond_0

    move v10, v1

    if-ltz v10, :cond_0

    move v10, v2

    if-lez v10, :cond_0

    move v10, v1

    move v11, v2

    add-int/2addr v10, v11

    move v11, v4

    if-le v10, v11, :cond_1

    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 12
    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    move v10, v3

    if-eqz v10, :cond_e

    const/16 v10, 0x4b

    move v4, v10

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v8, v10

    move-object v10, v8

    move v11, v4

    move v12, v2

    const/16 v13, 0xf

    add-int/lit8 v12, v12, 0xf

    const/16 v13, 0x10

    div-int/lit8 v12, v12, 0x10

    mul-int/2addr v11, v12

    .line 1
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    move v10, v2

    move v6, v10

    move v10, v1

    move v7, v10

    :goto_2
    move v10, v6

    if-lez v10, :cond_d

    move v10, v4

    if-nez v10, :cond_c

    move v10, v2

    const/high16 v11, 0x10000

    if-ge v10, v11, :cond_b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v1, v10

    move-object v10, v1

    const/4 v11, 0x0

    move v12, v7

    .line 2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v10, v8

    const-string v11, "%04X:"

    move-object v12, v1

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v10, v7

    move v5, v10

    :cond_2
    :goto_3
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v1, v10

    move-object v10, v1

    const/4 v11, 0x0

    move-object v12, v0

    move v13, v7

    .line 5
    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v10, v8

    const-string v11, " %02X"

    move-object v12, v1

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v6, v6, -0x1

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v9, v10

    move v10, v3

    if-eqz v10, :cond_8

    move v10, v9

    const/16 v11, 0x10

    if-eq v10, v11, :cond_3

    move v10, v6

    if-nez v10, :cond_8

    :cond_3
    const/16 v10, 0x10

    move v11, v9

    rsub-int/lit8 v10, v11, 0x10

    move v4, v10

    move v10, v4

    if-lez v10, :cond_4

    const/4 v10, 0x0

    move v1, v10

    :goto_4
    move v10, v1

    move v11, v4

    if-ge v10, v11, :cond_4

    move-object v10, v8

    const-string v11, "   "

    .line 6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v10, v4

    const/16 v11, 0x8

    if-lt v10, v11, :cond_5

    move-object v10, v8

    const-string v11, "  "

    .line 7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    :cond_5
    move-object v10, v8

    const-string v11, "  "

    .line 8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v10, 0x0

    move v1, v10

    :goto_5
    move v10, v1

    move v11, v9

    if-ge v10, v11, :cond_8

    move-object v10, v0

    move v11, v5

    move v12, v1

    add-int/2addr v11, v12

    .line 9
    aget-byte v10, v10, v11

    int-to-char v10, v10

    move v4, v10

    move v10, v4

    const/16 v11, 0x20

    if-lt v10, v11, :cond_7

    move v10, v4

    const/16 v11, 0x7e

    if-le v10, v11, :cond_6

    const/16 v10, 0x2e

    move v4, v10

    :cond_6
    :goto_6
    move-object v10, v8

    move v11, v4

    .line 10
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const/16 v10, 0x2e

    move v4, v10

    goto :goto_6

    :cond_8
    move v10, v9

    const/16 v11, 0x10

    if-eq v10, v11, :cond_9

    move v10, v6

    if-nez v10, :cond_a

    :cond_9
    move-object v10, v8

    const/16 v11, 0xa

    .line 11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v10, 0x0

    move v4, v10

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_a
    move v10, v9

    move v4, v10

    goto :goto_7

    :cond_b
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v1, v10

    move-object v10, v1

    const/4 v11, 0x0

    move v12, v7

    .line 3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v10, v8

    const-string v11, "%08X:"

    move-object v12, v1

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v10, v7

    move v5, v10

    goto/16 :goto_3

    :cond_c
    move v10, v4

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    move-object v10, v8

    const-string v11, " -"

    .line 4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    goto/16 :goto_3

    :cond_d
    move-object v10, v8

    .line 12
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    :cond_e
    const/16 v10, 0x39

    move v4, v10

    goto/16 :goto_1
.end method
