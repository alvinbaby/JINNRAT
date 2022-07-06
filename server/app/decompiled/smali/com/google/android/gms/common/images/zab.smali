.class final Lcom/google/android/gms/common/images/zab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Lcom/google/android/gms/common/images/zag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    move-object v0, p0

    const-string v4, "LoadImageRunnable must be executed on the main thread"

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 2
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 3
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab(Lcom/google/android/gms/common/images/zag;)V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    move-object v1, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/images/zag;->zaa:Lcom/google/android/gms/common/images/zad;

    move-object v2, v4

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_2

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zad(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v6

    const/4 v7, 0x1

    .line 7
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/common/images/zag;->zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    .line 21
    :goto_0
    return-void

    .line 7
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 8
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 9
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 10
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_3

    .line 11
    new-instance v4, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    move-object v1, v4

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    move-object v6, v2

    iget-object v6, v6, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    move-object v6, v1

    .line 12
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zaa(Lcom/google/android/gms/common/images/zag;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 14
    instance-of v4, v4, Lcom/google/android/gms/common/images/zaf;

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    move-object v6, v1

    .line 15
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    .line 16
    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/HashSet;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 17
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/HashSet;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 18
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v1

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac()V

    :cond_5
    move-object v4, v0

    .line 20
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_6
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zad(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v6

    const/4 v7, 0x1

    .line 21
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/common/images/zag;->zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object v1, v4

    .line 20
    move-object v4, v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    move-object v4, v1

    .line 20
    throw v4
.end method
