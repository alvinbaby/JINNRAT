.class public final Lcom/google/android/gms/common/internal/zaz;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator",
        "<",
        "Lcom/google/android/gms/common/internal/zam;",
        ">;"
    }
.end annotation


# static fields
.field private static final zaa:Lcom/google/android/gms/common/internal/zaz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v1, Lcom/google/android/gms/common/internal/zaz;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/internal/zaz;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/zaz;->zaa:Lcom/google/android/gms/common/internal/zaz;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zaa(Landroid/content/Context;II)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v6, Lcom/google/android/gms/common/internal/zaz;->zaa:Lcom/google/android/gms/common/internal/zaz;

    move-object v3, v6

    .line 1
    :try_start_0
    new-instance v6, Lcom/google/android/gms/common/internal/zax;

    move-object v4, v6

    move-object v6, v4

    const/4 v7, 0x1

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    .line 2
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/internal/zax;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    move-object v6, v0

    .line 3
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    move-object v5, v6

    move-object v6, v3

    move-object v7, v0

    .line 4
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaz;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Lcom/google/android/gms/common/internal/zam;

    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/zam;->zae(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/common/internal/zax;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 6
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 7
    move-object v6, v0

    move-object v0, v6

    return-object v0

    .line 6
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 7
    new-instance v6, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    move-object v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v4, v6

    move-object v6, v4

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v4

    const-string v7, "Could not get button with size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v4

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v4

    const-string v7, " and color "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v4

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    throw v6
.end method


# virtual methods
.method public final bridge synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

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

    const-string v3, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    instance-of v2, v2, Lcom/google/android/gms/common/internal/zam;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/internal/zam;

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/internal/zam;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/zam;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
