.class abstract Lcom/google/android/gms/common/zzk;
.super Lcom/google/android/gms/common/zzi;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static final zzb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    .line 1
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzk;->zzb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    move-object v2, v0

    sget-object v3, Lcom/google/android/gms/common/zzk;->zzb:Ljava/lang/ref/WeakReference;

    iput-object v3, v2, Lcom/google/android/gms/common/zzk;->zza:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected abstract zzb()[B
.end method

.method final zzc()[B
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/common/zzk;->zza:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/zzk;->zzb()[B

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 3
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/zzk;->zza:Ljava/lang/ref/WeakReference;

    :cond_0
    move-object v3, v0

    .line 4
    monitor-exit v3

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :catchall_0
    move-exception v3

    move-object v1, v3

    .line 5
    move-object v3, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    move-object v3, v1

    .line 5
    throw v3
.end method
