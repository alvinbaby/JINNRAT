.class public Lcom/google/firebase/FirebaseExceptionMapper;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;


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


# virtual methods
.method public final getException(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/google/firebase/FirebaseException;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v2

    .line 3
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v2, Lcom/google/firebase/FirebaseApiNotAvailableException;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v1

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method
