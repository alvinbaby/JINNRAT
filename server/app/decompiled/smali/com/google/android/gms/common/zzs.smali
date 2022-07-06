.class public final Lcom/google/android/gms/common/zzs;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GoogleCertificatesQueryCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingPackage"
        id = 0x1
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/common/zzi;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingCertificateBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAllowTestKeys"
        id = 0x3
    .end annotation
.end field

.field private final zzd:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "false"
        getter = "getIgnoreTestKeysOverride"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Lcom/google/android/gms/common/zzt;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/zzt;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation

        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/zzs;->zza:Ljava/lang/String;

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v1, v5

    :goto_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/zzs;->zzb:Lcom/google/android/gms/common/zzi;

    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/google/android/gms/common/zzs;->zzc:Z

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/android/gms/common/zzs;->zzd:Z

    return-void

    :cond_0
    move-object v5, v2

    .line 1
    :try_start_0
    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzx;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzy;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/internal/zzy;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move-object v1, v5

    :goto_1
    move-object v5, v1

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/gms/common/zzj;

    move-object v2, v5

    move-object v5, v2

    move-object v6, v1

    .line 4
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    move-object v5, v2

    move-object v1, v5

    goto :goto_0

    :cond_1
    const-string v5, "GoogleCertificatesQuery"

    const-string v6, "Could not unwrap certificate"

    .line 5
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 3
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v1, v5

    const-string v5, "GoogleCertificatesQuery"

    const-string v6, "Could not unwrap certificate"

    move-object v7, v1

    .line 2
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)V
    .locals 7
    .param p2    # Lcom/google/android/gms/common/zzi;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/zzs;->zza:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/zzs;->zzb:Lcom/google/android/gms/common/zzi;

    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/google/android/gms/common/zzs;->zzc:Z

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/android/gms/common/zzs;->zzd:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v4

    move v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/zzs;->zza:Ljava/lang/String;

    const/4 v7, 0x0

    .line 2
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/zzs;->zzb:Lcom/google/android/gms/common/zzi;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    const-string v4, "GoogleCertificatesQuery"

    const-string v5, "certificate binder is null"

    .line 3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v4, 0x0

    move-object v2, v4

    :cond_0
    move-object v4, v1

    const/4 v5, 0x2

    move-object v6, v2

    const/4 v7, 0x0

    .line 4
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    move-object v4, v1

    const/4 v5, 0x3

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/zzs;->zzc:Z

    .line 5
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/gms/common/zzs;->zzd:Z

    .line 6
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v1

    move v5, v3

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
