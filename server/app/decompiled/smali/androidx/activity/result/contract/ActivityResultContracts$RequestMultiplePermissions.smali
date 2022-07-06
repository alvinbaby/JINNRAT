.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "ActivityResultContracts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestMultiplePermissions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<[",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "androidx.activity.result.contract.extra.PERMISSIONS"

.field public static final EXTRA_PERMISSION_GRANT_RESULTS:Ljava/lang/String; = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method

.method static createIntent([Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    new-instance v1, Landroid/content/Intent;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-static {v3}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v2

    array-length v10, v10

    if-nez v10, :cond_1

    .line 206
    :cond_0
    new-instance v10, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v10

    .line 221
    :goto_0
    return-object v0

    .line 209
    :cond_1
    new-instance v10, Landroidx/collection/ArrayMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v3, v10

    .line 210
    const/4 v10, 0x1

    move v4, v10

    .line 211
    move-object v10, v2

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_1
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_4

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 212
    move-object v10, v1

    move-object v11, v8

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    move v9, v10

    .line 214
    move-object v10, v3

    move-object v11, v8

    move v12, v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 215
    move v10, v9

    if-nez v10, :cond_2

    const/4 v10, 0x0

    move v4, v10

    .line 211
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 212
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 218
    :cond_4
    move v10, v4

    if-eqz v10, :cond_5

    .line 219
    new-instance v10, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v3

    invoke-direct {v11, v12}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v10

    goto :goto_0

    .line 221
    :cond_5
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 6
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->parseResult(ILandroid/content/Intent;)Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/util/Map;
    .locals 13
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v8, v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v0, v8

    .line 239
    :goto_0
    return-object v0

    .line 229
    :cond_0
    move-object v8, v2

    if-nez v8, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 231
    :cond_1
    move-object v8, v2

    const-string v9, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 232
    move-object v8, v2

    const-string v9, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    move-object v4, v8

    .line 233
    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v3

    if-nez v8, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 235
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v5, v8

    .line 236
    const/4 v8, 0x0

    move v6, v8

    move-object v8, v3

    array-length v8, v8

    move v7, v8

    :goto_1
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_5

    .line 237
    move-object v8, v5

    move-object v9, v3

    move v10, v6

    aget-object v9, v9, v10

    move-object v10, v4

    move v11, v6

    aget v10, v10, v11

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 237
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 239
    :cond_5
    move-object v8, v5

    move-object v0, v8

    goto :goto_0
.end method
