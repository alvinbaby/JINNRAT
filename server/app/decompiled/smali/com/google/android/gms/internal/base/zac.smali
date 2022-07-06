.class public final Lcom/google/android/gms/internal/base/zac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field private static final zaa:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/google/android/gms/internal/base/zac;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/base/zac;->zaa:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zaa(Landroid/os/Parcel;Z)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static zab(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 2
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v2, v1

    move-object v3, v0

    .line 2
    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    move-object v0, v2

    goto :goto_0
.end method

.method public static zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    .line 3
    invoke-interface {v2, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static zad(Landroid/os/Parcel;Landroid/os/IInterface;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0
.end method
