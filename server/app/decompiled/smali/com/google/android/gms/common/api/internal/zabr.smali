.class public final Lcom/google/android/gms/common/api/internal/zabr;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field zaa:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/api/internal/zabq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabq;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabr;->zab:Lcom/google/android/gms/common/api/internal/zabq;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    .line 1
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 2
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_0
    const-string v3, "com.google.android.gms"

    move-object v4, v1

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabr;->zab:Lcom/google/android/gms/common/api/internal/zabq;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabq;->zaa()V

    move-object v3, v0

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabr;->zab()V

    :goto_1
    return-void

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_0
.end method

.method public final zaa(Landroid/content/Context;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Landroid/content/Context;

    return-void
.end method

.method public final declared-synchronized zab()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Landroid/content/Context;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    .line 1
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
