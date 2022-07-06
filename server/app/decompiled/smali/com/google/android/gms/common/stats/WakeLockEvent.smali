.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "WakeLockEventCreator"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zzb:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTimeMillis"
        id = 0x2
    .end annotation
.end field

.field private zzc:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventType"
        id = 0xb
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWakeLockName"
        id = 0x4
    .end annotation
.end field

.field private final zze:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSecondaryWakeLockName"
        id = 0xa
    .end annotation
.end field

.field private final zzf:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCodePackage"
        id = 0x11
    .end annotation
.end field

.field private final zzg:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWakeLockType"
        id = 0x5
    .end annotation
.end field

.field private final zzh:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingPackages"
        id = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzi:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventKey"
        id = 0xc
    .end annotation
.end field

.field private final zzj:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getElapsedRealtime"
        id = 0x8
    .end annotation
.end field

.field private zzk:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDeviceState"
        id = 0xe
    .end annotation
.end field

.field private final zzl:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHostPackage"
        id = 0xd
    .end annotation
.end field

.field private final zzm:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getBeginPowerPercentage"
        id = 0xf
    .end annotation
.end field

.field private final zzn:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTimeout"
        id = 0x10
    .end annotation
.end field

.field private final zzo:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAcquiredWithTimeout"
        id = 0x12
    .end annotation
.end field

.field private zzp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Lcom/google/android/gms/common/stats/zza;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V
    .locals 27
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation

        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p9    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p11    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p14    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .param p15    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x10
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x11
        .end annotation
    .end param
    .param p18    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x12
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-wide/from16 v13, p9

    move/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move/from16 v18, p14

    move-wide/from16 v19, p15

    move-object/from16 v21, p17

    move/from16 v22, p18

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zza:I

    move-object/from16 v23, v4

    move-wide/from16 v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzb:J

    move-object/from16 v23, v4

    move/from16 v24, v8

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzc:I

    move-object/from16 v23, v4

    move-object/from16 v24, v9

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzd:Ljava/lang/String;

    move-object/from16 v23, v4

    move-object/from16 v24, v16

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zze:Ljava/lang/String;

    move-object/from16 v23, v4

    move-object/from16 v24, v21

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzf:Ljava/lang/String;

    move-object/from16 v23, v4

    move/from16 v24, v10

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzg:I

    move-object/from16 v23, v4

    const-wide/16 v24, -0x1

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzp:J

    move-object/from16 v23, v4

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzh:Ljava/util/List;

    move-object/from16 v23, v4

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzi:Ljava/lang/String;

    move-object/from16 v23, v4

    move-wide/from16 v24, v13

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzj:J

    move-object/from16 v23, v4

    move/from16 v24, v15

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzk:I

    move-object/from16 v23, v4

    move-object/from16 v24, v17

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzl:Ljava/lang/String;

    move-object/from16 v23, v4

    move/from16 v24, v18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzm:F

    move-object/from16 v23, v4

    move-wide/from16 v24, v19

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzn:J

    move-object/from16 v23, v4

    move/from16 v24, v22

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzo:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v2

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v4

    move v3, v4

    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zza:I

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v2

    const/4 v5, 0x2

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzb:J

    .line 3
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    move-object v4, v2

    const/4 v5, 0x4

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzd:Ljava/lang/String;

    const/4 v7, 0x0

    .line 4
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v2

    const/4 v5, 0x5

    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzg:I

    .line 5
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v2

    const/4 v5, 0x6

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzh:Ljava/util/List;

    const/4 v7, 0x0

    .line 6
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    move-object v4, v2

    const/16 v5, 0x8

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzj:J

    .line 7
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    move-object v4, v2

    const/16 v5, 0xa

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zze:Ljava/lang/String;

    const/4 v7, 0x0

    .line 8
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v2

    const/16 v5, 0xb

    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzc:I

    .line 9
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v2

    const/16 v5, 0xc

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzi:Ljava/lang/String;

    const/4 v7, 0x0

    .line 10
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v2

    const/16 v5, 0xd

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzl:Ljava/lang/String;

    const/4 v7, 0x0

    .line 11
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v2

    const/16 v5, 0xe

    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzk:I

    .line 12
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v2

    const/16 v5, 0xf

    move-object v6, v1

    iget v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzm:F

    .line 13
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    move-object v4, v2

    const/16 v5, 0x10

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzn:J

    .line 14
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    move-object v4, v2

    const/16 v5, 0x11

    move-object v6, v1

    iget-object v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzf:Ljava/lang/String;

    const/4 v7, 0x0

    .line 15
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    move-object v4, v2

    const/16 v5, 0x12

    move-object v6, v1

    iget-boolean v6, v6, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzo:Z

    .line 16
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    move-object v4, v2

    move v5, v3

    .line 17
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzb:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final zzb()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzc:I

    move v0, v1

    return v0
.end method

.method public final zzc()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzp:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 18
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzh:Ljava/util/List;

    move-object v1, v15

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzd:Ljava/lang/String;

    move-object v5, v15

    move-object v15, v0

    iget v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzg:I

    move v6, v15

    move-object v15, v1

    if-nez v15, :cond_3

    const-string v15, ""

    move-object v1, v15

    :goto_0
    move-object v15, v0

    iget v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzk:I

    move v7, v15

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zze:Ljava/lang/String;

    move-object v2, v15

    move-object v15, v2

    if-nez v15, :cond_0

    const-string v15, ""

    move-object v2, v15

    :cond_0
    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzl:Ljava/lang/String;

    move-object v3, v15

    move-object v15, v3

    if-nez v15, :cond_1

    const-string v15, ""

    move-object v3, v15

    :cond_1
    move-object v15, v0

    iget v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzm:F

    move v8, v15

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzf:Ljava/lang/String;

    move-object v4, v15

    move-object v15, v4

    if-nez v15, :cond_2

    const-string v15, ""

    move-object v4, v15

    :cond_2
    move-object v15, v0

    iget-boolean v15, v15, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzo:Z

    move v0, v15

    move-object v15, v5

    .line 2
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v9, v15

    move-object v15, v1

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v10, v15

    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v11, v15

    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v12, v15

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v13, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move-object v14, v15

    move-object v15, v14

    move/from16 v16, v9

    const/16 v17, 0x33

    add-int/lit8 v16, v16, 0x33

    move/from16 v17, v10

    add-int v16, v16, v17

    move/from16 v17, v11

    add-int v16, v16, v17

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v17, v13

    add-int v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move-object/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v15, v14

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    return-object v0

    :cond_3
    const-string v15, ","

    move-object/from16 v16, v1

    .line 1
    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    move-object v1, v15

    goto/16 :goto_0
.end method
