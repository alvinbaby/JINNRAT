.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static final zze:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private volatile zzA:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzB:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzC:Z

.field private volatile zzD:Lcom/google/android/gms/common/internal/zzi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field zza:Lcom/google/android/gms/common/internal/zzt;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Landroid/os/Handler;

.field protected zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field protected zzd:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:I

.field private zzj:J

.field private volatile zzk:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzl:Landroid/content/Context;

.field private final zzm:Landroid/os/Looper;

.field private final zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

.field private final zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zzp:Ljava/lang/Object;

.field private final zzq:Ljava/lang/Object;

.field private zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field private zzs:Landroid/os/IInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final zzt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzu:Lcom/google/android/gms/common/internal/zze;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zze;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzv:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzy:I

.field private final zzz:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sput-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "service_esmobile"

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const-string v3, "service_googleme"

    aput-object v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/internal/GmsClientSupervisor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    new-instance v9, Ljava/lang/Object;

    move-object v8, v9

    move-object v9, v8

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    new-instance v9, Ljava/lang/Object;

    move-object v8, v9

    move-object v9, v8

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    move-object v8, v9

    move-object v9, v8

    .line 1
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Z

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzi;

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v8, v9

    move-object v9, v8

    const/4 v10, 0x0

    .line 2
    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v9, v1

    const-string v10, "Context must not be null"

    .line 3
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    move-object v9, v2

    const-string v10, "Handler must not be null"

    .line 4
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v9, v0

    move-object v10, v2

    .line 5
    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/os/Looper;

    move-object v9, v3

    const-string v10, "Supervisor must not be null"

    .line 6
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-object v9, v4

    const-string v10, "API availability must not be null"

    .line 7
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v9, v1

    .line 8
    invoke-static {v9}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v9

    move-object v7, v9

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v9

    move-object v8, v9

    move-object v9, v4

    .line 10
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v5

    .line 11
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v7

    move-object v13, v8

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 12
    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/internal/GmsClientSupervisor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    new-instance v10, Ljava/lang/Object;

    move-object v9, v10

    move-object v10, v9

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    new-instance v10, Ljava/lang/Object;

    move-object v9, v10

    move-object v10, v9

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    move-object v9, v10

    move-object v10, v9

    .line 13
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    move-object v10, v0

    const/4 v11, 0x1

    iput v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Z

    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzi;

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v9, v10

    move-object v10, v9

    const/4 v11, 0x0

    .line 14
    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v10, v1

    const-string v11, "Context must not be null"

    .line 15
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    move-object v10, v2

    const-string v11, "Looper must not be null"

    .line 16
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/os/Looper;

    move-object v10, v3

    const-string v11, "Supervisor must not be null"

    .line 17
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-object v10, v4

    const-string v11, "API availability must not be null"

    .line 18
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    new-instance v10, Lcom/google/android/gms/common/internal/zzb;

    move-object v1, v10

    move-object v10, v1

    move-object v11, v0

    move-object v12, v2

    .line 19
    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/common/internal/zzb;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V

    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Z

    const/4 v3, 0x5

    move v1, v3

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v2

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void

    :cond_0
    const/4 v3, 0x4

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    throw v3
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Z

    move v0, v1

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v4, v6

    move-object v6, v4

    monitor-enter v6

    move-object v6, v0

    :try_start_0
    iget v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v5, v6

    move v6, v5

    move v7, v1

    if-eq v6, v7, :cond_0

    move-object v6, v4

    monitor-exit v6

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    move v6, v0

    move v0, v6

    return v0

    :cond_0
    move-object v6, v0

    move v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp(ILandroid/os/IInterface;)V

    move-object v6, v4

    monitor-exit v6

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v0, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    throw v6
.end method

.method static synthetic zzm(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzi;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzi;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->usesClientTelemetry()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzi;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-object v0, v2

    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zza(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;)V

    :goto_1
    return-void

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->getRootTelemetryConfiguration()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    goto :goto_1
.end method

.method private final zzp(ILandroid/os/IInterface;)V
    .locals 18
    .param p2    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v11, v2

    const/4 v12, 0x4

    if-eq v11, v12, :cond_6

    const/4 v11, 0x0

    move v4, v11

    :goto_0
    move-object v11, v3

    if-nez v11, :cond_5

    const/4 v11, 0x0

    move v5, v11

    :goto_1
    move v11, v4

    move v12, v5

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    move v4, v11

    :goto_2
    move v11, v4

    .line 1
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v4, v11

    move-object v11, v4

    monitor-enter v11

    move-object v11, v1

    move v12, v2

    :try_start_0
    iput v12, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move-object v11, v1

    move-object v12, v3

    iput-object v12, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    move v11, v2

    packed-switch v11, :pswitch_data_0

    .line 38
    :cond_0
    :goto_3
    move-object v11, v4

    .line 41
    monitor-exit v11

    return-void

    .line 1
    :pswitch_0
    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    move-object v2, v11

    move-object v11, v2

    if-eqz v11, :cond_1

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_1

    const-string v11, "GmsClient"

    move-object v5, v11

    move-object v11, v3

    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zza()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 8
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zzb()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    add-int/lit8 v7, v7, 0x46

    move-object v11, v6

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v8, v11

    move v11, v7

    move v12, v8

    add-int/2addr v11, v12

    move v7, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v8, v11

    move-object v11, v8

    move v12, v7

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v8

    const-string v12, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v8

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v8

    const-string v12, " on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v8

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-object v3, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 10
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zza()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v11, v3

    move-object v12, v5

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 11
    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/zzt;->zzb()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 12
    invoke-virtual {v14}, Lcom/google/android/gms/common/internal/zzt;->zzc()I

    move-result v14

    move-object v15, v2

    move-object/from16 v16, v1

    .line 13
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    move-object/from16 v17, v0

    .line 14
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/common/internal/zzt;->zzd()Z

    move-result v17

    .line 15
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    :cond_1
    new-instance v11, Lcom/google/android/gms/common/internal/zze;

    move-object v3, v11

    move-object v11, v3

    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/common/internal/zze;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    move-object v11, v1

    move-object v12, v3

    iput-object v12, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    move-object v11, v1

    iget v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v2, v11

    move v11, v2

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    move-object v11, v1

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    move-object v11, v2

    if-eqz v11, :cond_3

    new-instance v11, Lcom/google/android/gms/common/internal/zzt;

    move-object v2, v11

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 22
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getDefaultBindFlags()I

    move-result v15

    const/16 v16, 0x0

    .line 24
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zzt;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :goto_4
    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 25
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zzd()Z

    move-result v11

    move v2, v11

    move v11, v2

    if-eqz v11, :cond_2

    move-object v11, v1

    .line 26
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v11

    move v2, v11

    move v11, v2

    const v12, 0x1110e58

    if-ge v11, v12, :cond_2

    new-instance v11, Ljava/lang/IllegalStateException;

    move-object v2, v11

    const-string v11, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    move-object v3, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 39
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v5, v11

    move v11, v5

    if-eqz v11, :cond_7

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    :goto_5
    move-object v11, v2

    move-object v12, v1

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    throw v11

    .line 40
    :catchall_0
    move-exception v11

    move-object v1, v11

    move-object v11, v4

    .line 41
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    throw v11

    .line 39
    :cond_2
    move-object v11, v1

    :try_start_1
    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-object v2, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zza()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 28
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zzb()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 29
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zzc()I

    move-result v11

    move v7, v11

    move-object v11, v1

    .line 30
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 31
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zzd()Z

    move-result v11

    move v9, v11

    .line 32
    new-instance v11, Lcom/google/android/gms/common/internal/zzm;

    move-object v10, v11

    move-object v11, v10

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    move v15, v9

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/common/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object v11, v2

    move-object v12, v10

    move-object v13, v3

    move-object v14, v8

    .line 33
    invoke-virtual {v11, v12, v13, v14}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzb(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v11

    move v2, v11

    move v11, v2

    if-nez v11, :cond_0

    const-string v11, "GmsClient"

    move-object v2, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 34
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zza()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 35
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zzb()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v6, v11

    add-int/lit8 v6, v6, 0x22

    move-object v11, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    move v11, v6

    move v12, v7

    add-int/2addr v11, v12

    move v6, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v7, v11

    move-object v11, v7

    move v12, v6

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v7

    const-string v12, "unable to connect to service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v7

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v7

    const-string v12, " on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v7

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 36
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object v11, v1

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    .line 38
    invoke-virtual {v11, v12, v13, v14}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(ILandroid/os/Bundle;I)V

    goto/16 :goto_3

    .line 41
    :cond_3
    new-instance v11, Lcom/google/android/gms/common/internal/zzt;

    move-object v2, v11

    move-object v11, v2

    move-object v12, v1

    .line 19
    invoke-virtual {v12}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getDefaultBindFlags()I

    move-result v15

    move-object/from16 v16, v1

    .line 21
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getUseDynamicLookup()Z

    move-result v16

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zzt;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto/16 :goto_4

    :pswitch_1
    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    move-object v2, v11

    move-object v11, v2

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-object v3, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 2
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzt;->zza()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v11, v3

    move-object v12, v5

    move-object v13, v1

    iget-object v13, v13, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 3
    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/zzt;->zzb()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    .line 4
    invoke-virtual {v14}, Lcom/google/android/gms/common/internal/zzt;->zzc()I

    move-result v14

    move-object v15, v2

    move-object/from16 v16, v1

    .line 5
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    move-object/from16 v17, v0

    .line 6
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/common/internal/zzt;->zzd()Z

    move-result v17

    .line 7
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    goto/16 :goto_3

    :pswitch_2
    move-object v11, v3

    .line 40
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v11, v12}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    goto/16 :goto_3

    :cond_4
    const/4 v11, 0x0

    move v4, v11

    goto/16 :goto_2

    :cond_5
    const/4 v11, 0x1

    move v5, v11

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x1

    move v4, v11

    goto/16 :goto_0

    .line 41
    :cond_7
    new-instance v11, Ljava/lang/String;

    move-object v1, v11

    move-object v11, v1

    move-object v12, v3

    .line 39
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .locals 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v3

    move v1, v3

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp(ILandroid/os/IInterface;)V

    new-instance v3, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    move-object v3, v0

    move-object v4, v2

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V

    .line 4
    :goto_0
    return-void

    .line 3
    :cond_0
    new-instance v3, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    .line 4
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_0
.end method

.method protected final checkConnected()V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    throw v1

    :cond_0
    return-void
.end method

.method public connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .locals 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    move v5, v1

    .line 3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/zzc;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzc;->zzg()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object v4, v2

    .line 5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    monitor-enter v4

    move-object v4, v0

    const/4 v5, 0x0

    :try_start_1
    iput-object v5, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-object v4, v1

    .line 6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v2

    .line 5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v4

    .line 6
    move-object v4, v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5
    move-object v4, v0

    .line 6
    throw v4
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    move-object v2, v0

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v3, v11

    move-object v11, v3

    monitor-enter v11

    move-object v11, v1

    :try_start_0
    iget v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v5, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    move-object v6, v11

    move-object v11, v3

    .line 1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    move-object v3, v11

    move-object v11, v3

    monitor-enter v11

    move-object v11, v1

    :try_start_1
    iget-object v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-object v7, v11

    move-object v11, v3

    .line 2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v4

    move-object v12, v2

    .line 3
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "mConnectState="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move v11, v5

    packed-switch v11, :pswitch_data_0

    move-object v11, v4

    const-string v12, "UNKNOWN"

    .line 9
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    move-object v11, v4

    const-string v12, " mService="

    .line 10
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v11, v6

    if-nez v11, :cond_4

    move-object v11, v4

    const-string v12, "null"

    .line 11
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    :goto_1
    move-object v11, v4

    const-string v12, " mServiceBroker="

    .line 15
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v11, v7

    if-nez v11, :cond_3

    move-object v11, v4

    const-string v12, "null"

    .line 16
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    new-instance v11, Ljava/text/SimpleDateFormat;

    move-object v3, v11

    move-object v11, v3

    const-string v12, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v11, v1

    iget-wide v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    move-object v11, v4

    move-object v12, v2

    .line 20
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    const-string v12, "lastConnectedTime="

    .line 21
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v5, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:J

    move-wide v8, v11

    new-instance v11, Ljava/util/Date;

    move-object v6, v11

    move-object v11, v6

    move-wide v12, v8

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object v11, v3

    move-object v12, v6

    .line 22
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v10, v11

    move-object v11, v10

    move v12, v7

    const/16 v13, 0x15

    add-int/lit8 v12, v12, 0x15

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v10

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v10

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v10

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v11, v1

    iget-wide v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    move-object v11, v4

    move-object v12, v2

    .line 23
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "lastSuspendedCause="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v11, v1

    iget v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:I

    move v5, v11

    move v11, v5

    packed-switch v11, :pswitch_data_1

    move-object v11, v4

    move v12, v5

    .line 27
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    :goto_3
    move-object v11, v4

    const-string v12, " lastSuspendedTime="

    .line 28
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v5, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    move-wide v8, v11

    new-instance v11, Ljava/util/Date;

    move-object v6, v11

    move-object v11, v6

    move-wide v12, v8

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object v11, v3

    move-object v12, v6

    .line 29
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v10, v11

    move-object v11, v10

    move v12, v7

    const/16 v13, 0x15

    add-int/lit8 v12, v12, 0x15

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v10

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v10

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v10

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    move-object v11, v1

    iget-wide v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    move-object v11, v4

    move-object v12, v2

    .line 30
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "lastFailedStatus="

    .line 31
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v12, v1

    iget v12, v12, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:I

    .line 32
    invoke-static {v12}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v11, v4

    const-string v12, " lastFailedTime="

    .line 33
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v2, v11

    move-object v11, v1

    iget-wide v11, v11, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:J

    move-wide v8, v11

    new-instance v11, Ljava/util/Date;

    move-object v1, v11

    move-object v11, v1

    move-wide v12, v8

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object v11, v3

    move-object v12, v1

    .line 34
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    move-object v11, v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v3, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v4, v11

    move-object v11, v4

    move v12, v3

    const/16 v13, 0x15

    add-int/lit8 v12, v12, 0x15

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v4

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v4

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v11, v2

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_2
    goto :goto_4

    :pswitch_0
    move-object v11, v4

    const-string v12, "CAUSE_DEAD_OBJECT_EXCEPTION"

    .line 24
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    goto/16 :goto_3

    :pswitch_1
    move-object v11, v4

    const-string v12, "CAUSE_NETWORK_LOST"

    .line 25
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    goto/16 :goto_3

    :pswitch_2
    move-object v11, v4

    const-string v12, "CAUSE_SERVICE_DISCONNECTED"

    .line 26
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    goto/16 :goto_3

    :cond_3
    move-object v11, v4

    const-string v12, "IGmsServiceBroker@"

    .line 17
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v12, v7

    .line 18
    invoke-interface {v12}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    move-object v11, v4

    move-object v12, v1

    .line 12
    invoke-virtual {v12}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "@"

    .line 13
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    move-object v12, v6

    .line 14
    invoke-interface {v12}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    goto/16 :goto_1

    :pswitch_3
    move-object v11, v4

    const-string v12, "DISCONNECTING"

    .line 4
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v11, v4

    const-string v12, "CONNECTED"

    .line 5
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object v11, v4

    const-string v12, "LOCAL_CONNECTING"

    .line 6
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v11, v4

    const-string v12, "REMOTE_CONNECTING"

    .line 7
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v11, v4

    const-string v12, "DISCONNECTED"

    .line 8
    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    move-object v1, v11

    move-object v11, v3

    .line 1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v1

    throw v11

    :catchall_1
    move-exception v11

    move-object v1, v11

    .line 2
    move-object v11, v3

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1
    move-object v11, v1

    .line 2
    throw v11

    .line 3
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 23
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected enableLocalFallback()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    move-object v0, v1

    return-object v0
.end method

.method public final getAvailableFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzi;

    move-object v0, v1

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzi;->zzb:[Lcom/google/android/gms/common/Feature;

    move-object v0, v1

    goto :goto_0
.end method

.method public getConnectionHint()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzt;

    move-object v0, v1

    move-object v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "Failed to connect when checking package"

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    throw v1

    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzb()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getGCoreServiceId()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    move v0, v1

    return v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v1, Landroid/os/Bundle;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getLastDisconnectMessage()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method protected getLocalStartServiceAction()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/os/Looper;

    move-object v0, v1

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    sget v1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    move v0, v1

    return v0
.end method

.method public getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 10
    .param p1    # Lcom/google/android/gms/common/internal/IAccountAccessor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzA:Ljava/lang/String;

    .line 2
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(ILjava/lang/String;)V

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    .line 3
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/Bundle;

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v2

    move-object v7, v2

    .line 4
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/common/api/Scope;

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    move-object v5, v0

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresSignIn()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_1

    new-instance v5, Landroid/accounts/Account;

    move-object v2, v5

    move-object v5, v2

    const-string v6, "<<default account>>"

    const-string v7, "com.google"

    .line 7
    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:Landroid/accounts/Account;

    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v4

    move-object v6, v1

    .line 8
    invoke-interface {v6}, Lcom/google/android/gms/common/internal/IAccountAccessor;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:Landroid/os/IBinder;

    :cond_2
    :goto_0
    move-object v5, v4

    sget-object v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:[Lcom/google/android/gms/common/Feature;

    move-object v5, v4

    move-object v6, v0

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getApiFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:[Lcom/google/android/gms/common/Feature;

    move-object v5, v0

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->usesClientTelemetry()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzm:Z

    :cond_3
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    move-object v1, v5

    move-object v5, v1

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_4

    new-instance v5, Lcom/google/android/gms/common/internal/zzd;

    move-object v3, v5

    move-object v5, v3

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/internal/zzd;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    .line 14
    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    :goto_1
    move-object v5, v1

    .line 16
    monitor-exit v5

    .line 22
    :goto_2
    return-void

    .line 16
    :cond_4
    const-string v5, "GmsClient"

    const-string v6, "mServiceBroker is null, client disconnected"

    .line 15
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_1

    :cond_5
    move-object v5, v0

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresAccount()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    move-object v6, v0

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:Landroid/accounts/Account;

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v5

    const-string v5, "GmsClient"

    const-string v6, "IGmsServiceBroker.getService failed"

    move-object v7, v1

    .line 21
    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    move-object v5, v0

    const/4 v6, 0x3

    .line 22
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v0, v5

    move-object v5, v0

    .line 20
    throw v5

    :catch_2
    move-exception v5

    :goto_3
    move-object v1, v5

    const-string v5, "GmsClient"

    const-string v6, "IGmsServiceBroker.getService failed"

    move-object v7, v1

    .line 17
    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    move-object v5, v0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 19
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto :goto_2

    :catchall_0
    move-exception v5

    move-object v2, v5

    move-object v5, v1

    .line 16
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v2

    :try_start_3
    throw v5
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 20
    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method protected getScopes()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getService()Landroid/os/IInterface;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v2, v3

    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1
    new-instance v3, Landroid/os/DeadObjectException;

    move-object v0, v3

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/DeadObjectException;-><init>()V

    move-object v3, v0

    throw v3

    .line 3
    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 4
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v3, v0

    .line 4
    throw v3

    .line 1
    :cond_0
    move-object v3, v0

    .line 2
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Landroid/os/IInterface;

    move-object v0, v3

    move-object v3, v0

    const-string v4, "Client is connected but service is null"

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public getServiceBrokerBinder()Landroid/os/IBinder;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    move-object v0, v2

    move-object v2, v0

    if-nez v2, :cond_0

    move-object v2, v1

    .line 2
    monitor-exit v2

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    monitor-exit v2

    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v0, v2

    .line 3
    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v2, v0

    .line 3
    throw v2
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "Not a sign in API"

    .line 1
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    throw v1
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const-string v1, "com.google.android.gms"

    move-object v0, v1

    return-object v0
.end method

.method public getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzi;

    move-object v0, v1

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzi;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-object v0, v1

    goto :goto_0
.end method

.method protected getUseDynamicLookup()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public hasConnectionInfo()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzi;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v0, v2

    move v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    move-object v2, v1

    .line 1
    monitor-exit v2

    move v2, v0

    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v0, v2

    .line 2
    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v2, v0

    .line 2
    throw v2
.end method

.method public isConnecting()Z
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:I

    move v0, v2

    move v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    move-object v2, v1

    .line 1
    monitor-exit v2

    move v2, v0

    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v0, v2

    .line 2
    move-object v2, v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v2, v0

    .line 2
    throw v2
.end method

.method protected onConnectedLocked(Landroid/os/IInterface;)V
    .locals 6
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:J

    return-void
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    iput v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:I

    move-object v3, v1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:I

    move-object v3, v1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    return-void
.end method

.method protected onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 13
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v5, v7

    new-instance v7, Lcom/google/android/gms/common/internal/zzf;

    move-object v6, v7

    move-object v7, v6

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    .line 1
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    move-object v7, v5

    move-object v8, v5

    const/4 v9, 0x1

    move v10, v4

    const/4 v11, -0x1

    move-object v12, v6

    .line 2
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    return-void
.end method

.method public onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public providesSignIn()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public requiresAccount()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public requiresGooglePlayServices()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public requiresSignIn()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzA:Ljava/lang/String;

    return-void
.end method

.method public triggerConnectionSuspended(I)V
    .locals 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v2

    const/4 v5, 0x6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    move v7, v1

    .line 2
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 3
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method protected triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V
    .locals 10
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    const-string v5, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v1, v4

    move-object v4, v1

    move-object v5, v1

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    move v8, v2

    move-object v9, v3

    .line 3
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 4
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    return-void
.end method

.method public usesClientTelemetry()Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected final zza()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:Ljava/lang/String;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method protected final zzb(ILandroid/os/Bundle;I)V
    .locals 11
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    move-object v2, v5

    new-instance v5, Lcom/google/android/gms/common/internal/zzg;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    .line 1
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/zzg;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    move-object v5, v2

    move-object v6, v2

    const/4 v7, 0x7

    move v8, v3

    const/4 v9, -0x1

    move-object v10, v4

    .line 2
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v5

    return-void
.end method
