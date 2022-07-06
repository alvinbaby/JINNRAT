.class final Lcom/google/android/gms/common/images/zac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Landroid/net/Uri;

.field private final zac:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zad:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 8
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/android/gms/common/images/zac;->zab:Landroid/net/Uri;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/google/android/gms/common/images/zac;->zac:Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/google/android/gms/common/images/zac;->zad:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    move-object v0, p0

    const-string v6, "OnBitmapLoadedRunnable must be executed in the main thread"

    .line 1
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zac;->zac:Landroid/graphics/Bitmap;

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/images/zac;->zab:Landroid/net/Uri;

    .line 2
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    move-object v1, v6

    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zad(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    .line 3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move v1, v6

    :goto_0
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    move-object v6, v3

    move v7, v1

    .line 4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/images/zag;

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zac;->zac:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v7}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/images/zac;->zac:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    .line 7
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/images/zag;->zab(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    :goto_1
    move-object v6, v5

    .line 8
    instance-of v6, v6, Lcom/google/android/gms/common/images/zaf;

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zab(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    move-object v7, v5

    .line 9
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/images/zac;->zab:Landroid/net/Uri;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v7}, Lcom/google/android/gms/common/images/ImageManager;->zac(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v8}, Lcom/google/android/gms/common/images/ImageManager;->zad(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;

    move-result-object v8

    const/4 v9, 0x0

    .line 6
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/common/images/zag;->zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V

    goto :goto_1

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zac;->zad:Ljava/util/concurrent/CountDownLatch;

    .line 10
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zag()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    move-object v6, v1

    .line 11
    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/HashSet;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/images/zac;->zab:Landroid/net/Uri;

    .line 12
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    move-object v6, v1

    .line 13
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v6

    move-object v0, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    throw v6
.end method
