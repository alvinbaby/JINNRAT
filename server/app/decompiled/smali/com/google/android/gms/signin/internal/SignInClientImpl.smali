.class public Lcom/google/android/gms/signin/internal/SignInClientImpl;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/signin/zae;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient",
        "<",
        "Lcom/google/android/gms/signin/internal/zaf;",
        ">;",
        "Lcom/google/android/gms/signin/zae;"
    }
.end annotation


# static fields
.field public static final synthetic zaa:I


# instance fields
.field private final zab:Z

.field private final zac:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zad:Landroid/os/Bundle;

.field private final zae:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ClientSettings;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/16 v11, 0x2c

    move-object v12, v4

    move-object v13, v6

    move-object v14, v7

    .line 1
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Z

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    move-object v8, v0

    move-object v9, v4

    .line 2
    invoke-virtual {v9}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    return-void
.end method

.method public static createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;
    .locals 6
    .param p0    # Lcom/google/android/gms/common/internal/ClientSettings;
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
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v3

    move-object v3, v0

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Landroid/os/Bundle;

    move-object v2, v3

    move-object v3, v2

    .line 3
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.clientRequestedAccount"

    move-object v5, v0

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    move-object v5, v1

    .line 5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.idTokenRequested"

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.serverClientId"

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.hostedDomain"

    const/4 v5, 0x0

    .line 11
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.logSessionId"

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 4
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    const-string v3, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    instance-of v2, v2, Lcom/google/android/gms/signin/internal/zaf;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/signin/internal/zaf;

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/signin/internal/zaf;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/signin/internal/zaf;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v1, v2

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    const-string v3, "com.google.android.gms.signin.internal.realClientPackageName"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    move-object v0, v2

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 2

    move-object v0, p0

    const v1, 0xbdfcb8

    move v0, v1

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    const-string v1, "com.google.android.gms.signin.internal.ISignInService"

    move-object v0, v1

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    const-string v1, "com.google.android.gms.signin.service.START"

    move-object v0, v1

    return-object v0
.end method

.method public final requiresSignIn()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Z

    move v0, v1

    return v0
.end method

.method public final zaa(Lcom/google/android/gms/signin/internal/zae;)V
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "Expecting a valid ISignInCallbacks"

    .line 1
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccountOrDefault()Landroid/accounts/Account;

    move-result-object v6

    move-object v3, v6

    const-string v6, "<<default account>>"

    move-object v7, v3

    .line 3
    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v2, v6

    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    invoke-static {v6}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v6

    move-object v2, v6

    .line 5
    :goto_0
    new-instance v6, Lcom/google/android/gms/common/internal/zat;

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    move-object v5, v6

    move-object v6, v4

    move-object v7, v3

    move-object v8, v5

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/zat;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    move-object v6, v0

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/signin/internal/zaf;

    move-object v0, v6

    new-instance v6, Lcom/google/android/gms/signin/internal/zai;

    move-object v2, v6

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v4

    .line 7
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    .line 6
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/signin/internal/zaf;->zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_1
    return-void

    .line 6
    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v0, v6

    const-string v6, "SignInClientImpl"

    const-string v7, "Remote service probably died when signIn is called"

    .line 8
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 9
    :try_start_1
    new-instance v6, Lcom/google/android/gms/signin/internal/zak;

    move-object v2, v6

    .line 10
    new-instance v6, Lcom/google/android/gms/common/ConnectionResult;

    move-object v3, v6

    move-object v6, v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v3

    const/4 v9, 0x0

    .line 11
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    move-object v6, v1

    move-object v7, v2

    .line 9
    invoke-interface {v6, v7}, Lcom/google/android/gms/signin/internal/zae;->zab(Lcom/google/android/gms/signin/internal/zak;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v6, "SignInClientImpl"

    const-string v7, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    move-object v8, v0

    .line 12
    invoke-static {v6, v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_1
.end method

.method public final zab(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/internal/IAccountAccessor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    .line 1
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/signin/internal/zaf;

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    move-object v0, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v0

    .line 2
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v2

    .line 3
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/signin/internal/zaf;->zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_0
    return-void

    .line 3
    :catch_0
    move-exception v4

    const-string v4, "SignInClientImpl"

    const-string v5, "Remote service probably died when saveDefaultAccount is called"

    .line 4
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public final zac()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/signin/internal/zaf;

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    move-object v0, v2

    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/signin/internal/zaf;->zae(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :goto_0
    return-void

    .line 1
    :catch_0
    move-exception v2

    const-string v2, "SignInClientImpl"

    const-string v3, "Remote service probably died when clearAccountFromSessionStore is called"

    .line 2
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public final zad()V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method
