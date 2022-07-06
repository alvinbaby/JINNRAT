.class public final Lcom/google/android/gms/signin/internal/zaf;
.super Lcom/google/android/gms/internal/base/zaa;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, "com.google.android.gms.signin.internal.ISignInService"

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zae(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move v4, v1

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object v3, v0

    const/4 v4, 0x7

    move-object v5, v2

    .line 3
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    .line 2
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v5, v4

    move v6, v2

    .line 3
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, v4

    move v6, v3

    .line 4
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Z)V

    move-object v5, v0

    const/16 v6, 0x9

    move-object v7, v4

    .line 5
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    move-object v4, v3

    move-object v5, v2

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object v4, v0

    const/16 v5, 0xc

    move-object v6, v3

    .line 4
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method
