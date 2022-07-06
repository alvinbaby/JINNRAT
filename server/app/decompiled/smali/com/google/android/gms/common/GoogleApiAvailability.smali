.class public Lcom/google/android/gms/common/GoogleApiAvailability;
.super Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field private static final zaa:Ljava/lang/Object;

.field private static final zab:Lcom/google/android/gms/common/GoogleApiAvailability;


# instance fields
.field private zac:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/common/GoogleApiAvailability;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/GoogleApiAvailability;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    sget v1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v1, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method public static final varargs zai(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p0    # Lcom/google/android/gms/common/api/HasApiKey;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/google/android/gms/common/api/HasApiKey;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;[",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const-string v5, "Requested API must not be null."

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v1

    .line 2
    array-length v4, v4

    move v3, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    const-string v5, "Requested API must not be null."

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    .line 4
    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v2

    move-object v5, v0

    .line 5
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v2

    move-object v5, v1

    .line 6
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab()Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public varargs checkApiAvailability(Lcom/google/android/gms/common/api/GoogleApi;[Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;[",
            "Lcom/google/android/gms/common/api/GoogleApi",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    .line 1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zai(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/zab;->zaa:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public varargs checkApiAvailability(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/HasApiKey;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/android/gms/common/api/HasApiKey;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;[",
            "Lcom/google/android/gms/common/api/HasApiKey",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zai(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/zaa;->zaa:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getClientVersion(Landroid/content/Context;)I
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-super {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getClientVersion(Landroid/content/Context;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    .line 1
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 13
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    const-string v12, "d"

    .line 2
    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    move v10, v3

    invoke-static {v8, v9, v10}, Lcom/google/android/gms/common/internal/zag;->zab(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;

    move-result-object v8

    move-object v9, v4

    .line 3
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaf(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public getErrorDialog(Landroidx/fragment/app/Fragment;II)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    .line 4
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroidx/fragment/app/Fragment;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getErrorDialog(Landroidx/fragment/app/Fragment;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 12
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object v6, v1

    .line 5
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    move v8, v2

    const-string v9, "d"

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v1

    .line 6
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    move v8, v2

    move-object v9, v1

    move-object v10, v5

    move v11, v3

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/zag;->zac(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;

    move-result-object v9

    move-object v10, v4

    .line 7
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaf(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    .line 1
    invoke-super {v4, v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    .line 1
    invoke-super {v4, v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v3

    move-object v0, v3

    .line 4
    :goto_0
    return-object v0

    .line 3
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public final getErrorString(I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    .line 1
    invoke-super {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/HideFirstParty;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-super {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    .line 2
    invoke-super {v3, v4, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public final isUserResolvableError(I)Z
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    .line 1
    invoke-super {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isUserResolvableError(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    sget v3, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    move v2, v3

    const-string v3, "makeGooglePlayServicesAvailable must be called from the main thread"

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    .line 2
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v3

    move v0, v3

    move v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v1

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zabw;->zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zabw;

    move-result-object v3

    move-object v1, v3

    .line 5
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v3

    move-object v3, v2

    move v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zap;->zaf(Lcom/google/android/gms/common/ConnectionResult;I)V

    move-object v3, v1

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabw;->zab()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public setDefaultNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, "notification"

    .line 2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    move-object v4, v2

    .line 3
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    sget-object v3, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    .line 4
    monitor-enter v3

    move-object v3, v0

    move-object v4, v2

    :try_start_0
    iput-object v4, v3, Lcom/google/android/gms/common/GoogleApiAvailability;->zac:Ljava/lang/String;

    move-object v3, v1

    .line 5
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    throw v3
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;II)Z
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    .line 1
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    .line 2
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 3
    :goto_0
    return v0

    .line 2
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const-string v8, "GooglePlayServicesErrorDialog"

    move-object v9, v4

    .line 3
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->zag(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public showErrorNotification(Landroid/content/Context;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x0

    const-string v11, "n"

    .line 1
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zab(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public showErrorNotification(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    .line 3
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/GoogleApiAvailability;->zab(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final zaa(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 14
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/LifecycleFragment;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    move v12, v3

    const-string v13, "d"

    .line 1
    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/zag;->zad(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zag;

    move-result-object v9

    move-object v10, v5

    .line 2
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaf(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 3
    :goto_0
    return v0

    .line 2
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const-string v9, "GooglePlayServicesErrorDialog"

    move-object v10, v5

    .line 3
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/GoogleApiAvailability;->zag(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method final zab(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 13
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v3, v9

    move-object v9, v3

    const/4 v10, 0x0

    move v11, v2

    .line 1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const-string v9, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    move-object v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v5, v9

    move-object v9, v5

    .line 2
    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v9, "GoogleApiAvailability"

    move-object v10, v3

    move-object v11, v5

    invoke-static {v9, v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    move v9, v2

    const/16 v10, 0x12

    if-ne v9, v10, :cond_0

    move-object v9, v0

    move-object v10, v1

    .line 3
    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/GoogleApiAvailability;->zah(Landroid/content/Context;)V

    .line 41
    :goto_0
    return-void

    .line 3
    :cond_0
    move-object v9, v4

    if-nez v9, :cond_2

    move v9, v2

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    const-string v9, "GoogleApiAvailability"

    const-string v10, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 4
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    move-object v9, v1

    move v10, v2

    .line 5
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/zac;->zab(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    move-object v9, v1

    move v10, v2

    .line 6
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v1

    .line 7
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v6, v9

    move-object v9, v1

    const-string v10, "notification"

    .line 8
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    move-object v7, v9

    .line 9
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    move-object v8, v9

    move-object v9, v8

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    const/4 v10, 0x1

    .line 10
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    const/4 v10, 0x1

    .line 11
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v3

    .line 12
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v3, v9

    new-instance v9, Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-object v8, v9

    move-object v9, v8

    invoke-direct {v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v9, v3

    move-object v10, v8

    move-object v11, v5

    .line 13
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v3, v9

    move-object v9, v1

    .line 14
    invoke-static {v9}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 15
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    move-object v9, v3

    move-object v10, v1

    .line 16
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x2

    .line 17
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v9, v1

    .line 18
    invoke-static {v9}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v3

    .line 19
    sget v10, Lcom/google/android/gms/base/R$drawable;->common_full_open_on_phone:I

    move-object v11, v6

    sget v12, Lcom/google/android/gms/base/R$string;->common_open_on_phone:I

    .line 20
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v4

    .line 19
    invoke-virtual {v9, v10, v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 27
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v9

    if-nez v9, :cond_3

    :goto_2
    move-object v9, v3

    .line 39
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    move-object v1, v9

    move v9, v2

    packed-switch v9, :pswitch_data_0

    const v9, 0x9b6d

    move v0, v9

    :goto_3
    move-object v9, v7

    move v10, v0

    move-object v11, v1

    .line 41
    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 40
    :pswitch_0
    sget-object v9, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v9, 0x28c4

    move v0, v9

    goto :goto_3

    .line 28
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    sget-object v9, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    move-object v4, v9

    move-object v9, v4

    .line 29
    monitor-enter v9

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/google/android/gms/common/GoogleApiAvailability;->zac:Ljava/lang/String;

    move-object v0, v9

    move-object v9, v4

    .line 30
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    if-nez v9, :cond_4

    const-string v9, "com.google.android.gms.availability"

    move-object v0, v9

    move-object v9, v7

    move-object v10, v0

    .line 32
    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v9

    move-object v4, v9

    move-object v9, v1

    .line 33
    invoke-static {v9}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    move-object v9, v4

    if-nez v9, :cond_5

    .line 34
    new-instance v9, Landroid/app/NotificationChannel;

    move-object v4, v9

    move-object v9, v4

    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_4
    :goto_4
    move-object v9, v3

    move-object v10, v0

    .line 38
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object v9, v1

    move-object v10, v4

    .line 35
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v4

    move-object v10, v1

    .line 36
    invoke-virtual {v9, v10}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    move-object v9, v7

    move-object v10, v4

    .line 37
    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    :cond_6
    move-object v9, v3

    move-object v10, v4

    .line 21
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    goto/16 :goto_1

    :cond_7
    move-object v9, v3

    const v10, 0x108008a

    .line 22
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v10, v6

    sget v11, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 23
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v10, v4

    .line 25
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    move-object v10, v5

    .line 26
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    move-object v0, v9

    .line 31
    move-object v9, v4

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    move-object v9, v0

    .line 31
    throw v9

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zac(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 1
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 2
    invoke-virtual {v7}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    move-object v12, v4

    move v13, v3

    const/4 v14, 0x1

    .line 3
    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x8000000

    .line 4
    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 5
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->zab(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v5, 0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public final zad(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Landroid/widget/ProgressBar;

    move-object v3, v5

    move-object v5, v3

    move-object v6, v1

    const/4 v7, 0x0

    const v8, 0x101007a

    .line 1
    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v3

    const/4 v6, 0x1

    .line 2
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    move-object v5, v3

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v4

    move-object v6, v3

    .line 5
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    const/16 v7, 0x12

    .line 6
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v5, v4

    const-string v6, ""

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v5, v4

    .line 9
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    const-string v8, "GooglePlayServicesUpdatingDialog"

    move-object v9, v2

    .line 10
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->zag(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method public final zae(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Landroid/content/IntentFilter;

    move-object v3, v5

    move-object v5, v3

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 1
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "package"

    .line 2
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/common/api/internal/zabr;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v2

    .line 3
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zabr;-><init>(Lcom/google/android/gms/common/api/internal/zabq;)V

    move-object v5, v1

    move-object v6, v4

    move-object v7, v3

    .line 4
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    move-object v6, v1

    .line 5
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/zabr;->zaa(Landroid/content/Context;)V

    move-object v5, v0

    move-object v6, v1

    const-string v7, "com.google.android.gms"

    .line 6
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUninstalledAppPossiblyUpdating(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabq;->zaa()V

    move-object v5, v4

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabr;->zab()V

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method final zaf(Landroid/content/Context;ILcom/google/android/gms/common/internal/zag;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 16
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    new-instance v5, Landroid/util/TypedValue;

    move-object v0, v5

    move-object v5, v0

    .line 1
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v5, v1

    .line 2
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010309

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    const-string v5, "Theme.Dialog.Alert"

    move-object v6, v1

    .line 3
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v0, v5

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_1
    move-object v5, v0

    if-nez v5, :cond_1

    .line 6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v0, v5

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    .line 7
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v4

    .line 8
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    :cond_2
    move-object v5, v1

    move v6, v2

    .line 9
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/zac;->zae(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    :cond_3
    move-object v5, v1

    move v6, v2

    .line 11
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    if-eqz v5, :cond_4

    move-object v5, v0

    move-object v6, v1

    .line 12
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v1, v5

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v5, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    move-object v6, v1

    .line 14
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v2, v5

    move-object v5, v2

    .line 15
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v5, "GoogleApiAvailability"

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    move-object v5, v0

    .line 16
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method final zag(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 8
    .param p4    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    .line 1
    :try_start_0
    instance-of v5, v5, Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    move v5, v0

    if-eqz v5, :cond_0

    move-object v5, v1

    .line 5
    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    move-object v0, v5

    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v0, v5

    move-object v5, v2

    move-object v6, v4

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object v5

    move-object v6, v0

    move-object v7, v3

    .line 8
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 4
    :catch_0
    move-exception v5

    .line 8
    :cond_0
    move-object v5, v1

    .line 2
    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object v0, v5

    move-object v5, v2

    move-object v6, v4

    .line 3
    invoke-static {v5, v6}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object v5

    move-object v6, v0

    move-object v7, v3

    .line 4
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final zah(Landroid/content/Context;)V
    .locals 8

    .prologue
    move-object v1, p0

    move-object v2, p1

    new-instance v4, Lcom/google/android/gms/common/zac;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/zac;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V

    move-object v4, v3

    const/4 v5, 0x1

    const-wide/32 v6, 0x1d4c0

    .line 2
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v4

    return-void
.end method
