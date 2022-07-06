.class public final Lcom/google/android/gms/common/api/internal/zzb;
.super Landroid/app/Fragment;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# static fields
.field private static final zza:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzb;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:I

.field private zzd:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v1, Ljava/util/WeakHashMap;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    .line 2
    new-instance v2, Landroidx/collection/ArrayMap;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v2, v0

    move-object v3, v1

    .line 3
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    return-void
.end method

.method public static zza(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zzb;
    .locals 7

    .prologue
    move-object v0, p0

    sget-object v4, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ljava/util/WeakHashMap;

    move-object v5, v0

    .line 1
    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 2
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zzb;

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_3

    :cond_0
    move-object v4, v0

    .line 3
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "LifecycleFragmentImpl"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zzb;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zzb;->isRemoving()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lcom/google/android/gms/common/api/internal/zzb;

    move-object v1, v4

    move-object v4, v1

    .line 6
    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zzb;-><init>()V

    move-object v4, v0

    .line 7
    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    move-object v5, v1

    const-string v6, "LifecycleFragmentImpl"

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v4

    :cond_2
    sget-object v4, Lcom/google/android/gms/common/api/internal/zzb;->zza:Ljava/util/WeakHashMap;

    move-object v2, v4

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 8
    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v1

    move-object v0, v4

    :goto_0
    return-object v0

    :catch_0
    move-exception v4

    move-object v0, v4

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v1, v4

    move-object v4, v1

    const-string v5, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    move-object v6, v0

    .line 4
    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v1

    throw v4

    :cond_3
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/internal/zzb;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    move v0, v1

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/zzb;)Landroid/os/Bundle;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzd:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V
    .locals 9
    .param p2    # Lcom/google/android/gms/common/api/internal/LifecycleCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    move-object v6, v1

    .line 1
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v2

    .line 2
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    if-lez v5, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/common/zzh;

    move-object v3, v5

    move-object v5, v3

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/google/android/gms/common/api/internal/zza;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/api/internal/zza;-><init>(Lcom/google/android/gms/common/api/internal/zzb;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v4

    .line 4
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/common/zzh;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 5
    :goto_0
    return-void

    .line 4
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v0, v5

    move-object v5, v1

    .line 5
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v3, v5

    move-object v5, v3

    move v6, v2

    const/16 v7, 0x3b

    add-int/lit8 v6, v6, 0x3b

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v3

    const-string v6, "LifecycleCallback with tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v3

    const-string v6, " already added to this fragment."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_1
    goto :goto_0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 1
    invoke-super {v5, v6, v7, v8, v9}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    :goto_0
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 3
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    move-object v5, v1

    .line 1
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-object v0, v3

    return-object v0
.end method

.method public final getLifecycleActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final isCreated()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final isStarted()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    .line 1
    invoke-super {v4, v5, v6, v7}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move v5, v1

    move v6, v2

    move-object v7, v3

    .line 3
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-super {v4, v5}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zzb;->zzd:Landroid/os/Bundle;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v0, v4

    move-object v4, v0

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-object v3, v4

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    .line 4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    :goto_1
    move-object v4, v3

    move-object v5, v0

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Landroid/app/Fragment;->onDestroy()V

    move-object v1, v0

    const/4 v2, 0x5

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Landroid/app/Fragment;->onResume()V

    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    .line 1
    invoke-super {v4, v5}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    move-object v4, v1

    if-nez v4, :cond_0

    .line 5
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    :goto_1
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v2, v4

    new-instance v4, Landroid/os/Bundle;

    move-object v3, v4

    move-object v4, v3

    .line 3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v4, v2

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    move-object v4, v1

    move-object v5, v2

    .line 5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    goto :goto_0
.end method

.method public final onStart()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Landroid/app/Fragment;->onStart()V

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-super {v1}, Landroid/app/Fragment;->onStop()V

    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzc:I

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
