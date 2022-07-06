.class public abstract Lcom/google/android/gms/common/internal/service/zaj;
.super Lcom/google/android/gms/internal/base/zab;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/service/zak;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const-string v2, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zaa(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move-object v6, v2

    .line 1
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/internal/service/zaj;->zab(I)V

    move-object v5, v3

    .line 3
    invoke-virtual {v5}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
