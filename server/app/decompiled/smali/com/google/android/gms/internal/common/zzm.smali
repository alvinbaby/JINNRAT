.class public final Lcom/google/android/gms/internal/common/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method public static varargs zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    move-object v9, v1

    array-length v9, v9

    move v3, v9

    move v9, v2

    move v10, v3

    if-ge v9, v10, :cond_1

    move-object v9, v1

    move v10, v2

    .line 1
    aget-object v9, v9, v10

    move-object v3, v9

    move-object v9, v3

    if-nez v9, :cond_0

    const-string v9, "null"

    move-object v3, v9

    :goto_1
    move-object v9, v1

    move v10, v2

    move-object v11, v3

    aput-object v11, v9, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v3

    .line 2
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    move-object v3, v9

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v4, v9

    move-object v9, v4

    move-object v10, v0

    .line 7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v3

    const/16 v12, 0x10

    mul-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    move v2, v9

    const/4 v9, 0x0

    move v3, v9

    :goto_2
    move-object v9, v1

    array-length v9, v9

    move v5, v9

    move v9, v3

    move v10, v5

    if-ge v9, v10, :cond_2

    move-object v9, v0

    const-string v10, "%s"

    move v11, v2

    .line 8
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    move v6, v9

    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    :cond_2
    move-object v9, v4

    move-object v10, v0

    move v11, v2

    move-object v12, v0

    .line 11
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v3

    move v10, v5

    if-ge v9, v10, :cond_4

    move-object v9, v4

    const-string v10, " ["

    .line 12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v0, v9

    move-object v9, v4

    move-object v10, v1

    move v11, v3

    .line 13
    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    :goto_3
    move v9, v0

    move-object v10, v1

    array-length v10, v10

    if-ge v9, v10, :cond_3

    move-object v9, v4

    const-string v10, ", "

    .line 14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v0

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v2, v9

    move-object v9, v4

    move-object v10, v1

    move v11, v0

    .line 15
    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v2

    move v0, v9

    goto :goto_3

    :cond_3
    move-object v9, v4

    const/16 v10, 0x5d

    .line 16
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    :cond_4
    move-object v9, v4

    .line 17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    return-object v0

    :cond_5
    move-object v9, v4

    move-object v10, v0

    move v11, v2

    move v12, v6

    .line 9
    invoke-virtual {v9, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    move-object v9, v4

    move-object v10, v1

    move v11, v3

    .line 10
    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v6

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v2, v9

    move v9, v5

    move v3, v9

    goto/16 :goto_2

    :catch_0
    move-exception v9

    move-object v4, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 3
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v3

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v6, v9

    move-object v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v8, v9

    move-object v9, v8

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v7

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v8

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    const/16 v10, 0x40

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    const-string v9, "com.google.common.base.Strings"

    .line 4
    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    move-object v6, v9

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move-object v7, v9

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    const-string v9, "Exception during lenientFormat for "

    move-object v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v8

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    :goto_4
    move-object v9, v6

    move-object v10, v7

    const-string v11, "com.google.common.base.Strings"

    const-string v12, "lenientToString"

    move-object v13, v3

    move-object v14, v4

    .line 5
    invoke-virtual/range {v9 .. v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 6
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    move-object v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v4, v9

    move-object v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v7, v9

    move-object v9, v7

    move v10, v4

    const/16 v11, 0x9

    add-int/lit8 v10, v10, 0x9

    move v11, v6

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v7

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    const-string v10, " threw "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    goto/16 :goto_1

    :cond_6
    new-instance v9, Ljava/lang/String;

    move-object v3, v9

    move-object v9, v3

    move-object v10, v8

    .line 4
    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method
