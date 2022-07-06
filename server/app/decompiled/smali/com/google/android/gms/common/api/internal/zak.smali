.class public final Lcom/google/android/gms/common/api/internal/zak;
.super Lcom/google/android/gms/common/api/internal/zap;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zad:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/common/api/internal/zaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    new-instance v2, Landroid/util/SparseArray;

    move-object v1, v2

    move-object v2, v1

    .line 2
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move-object v2, v0

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zak;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v3, "AutoManageHelper"

    move-object v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zak;
    .locals 5

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zak;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    const-string v3, "AutoManageHelper"

    const-class v4, Lcom/google/android/gms/common/api/internal/zak;

    .line 2
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zak;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    .line 3
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/api/internal/zak;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private final zai(I)Lcom/google/android/gms/common/api/internal/zaj;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v1

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 2
    :goto_0
    return-object v0

    .line 1
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move-object v0, v2

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    .line 2
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zaj;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    move-object v7, v0

    move v8, v5

    .line 2
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v3

    move-object v8, v1

    .line 3
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "GoogleApiClient #"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v7

    move-object v8, v6

    iget v8, v8, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    move-object v7, v3

    const-string v8, ":"

    .line 4
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v7, v6

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v8, v1

    .line 5
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 8

    .prologue
    move-object v0, p0

    move-object v5, v0

    .line 1
    invoke-super {v5}, Lcom/google/android/gms/common/api/internal/zap;->onStart()V

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/gms/common/api/internal/zak;->zaa:Z

    move v1, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    const/16 v7, 0xe

    add-int/lit8 v6, v6, 0xe

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "onStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v5, "AutoManageHelper"

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zak;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    move-object v5, v0

    move v6, v1

    .line 5
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-super {v3}, Lcom/google/android/gms/common/api/internal/zap;->onStop()V

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v3, v0

    move v4, v1

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zab(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 14
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v2

    const-string v10, "GoogleApiClient instance cannot be null"

    .line 1
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move v10, v1

    .line 2
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_1

    const/4 v9, 0x1

    move v4, v9

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v5, v9

    move-object v9, v5

    const/16 v10, 0x36

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v5

    const-string v10, "Already managing a GoogleApiClient with id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v5

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move v9, v4

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3
    invoke-static {v9, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zak;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/common/api/internal/zam;

    move-object v4, v9

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/android/gms/common/api/internal/zak;->zaa:Z

    move v5, v9

    move-object v9, v4

    .line 5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v8, v9

    move-object v9, v8

    move v10, v7

    const/16 v11, 0x31

    add-int/lit8 v10, v10, 0x31

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v8

    const-string v10, "starting AutoManage for client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v8

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v9, "AutoManageHelper"

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    new-instance v9, Lcom/google/android/gms/common/api/internal/zaj;

    move-object v5, v9

    move-object v9, v5

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move-object v13, v3

    .line 6
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/common/api/internal/zaj;-><init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v9, v2

    move-object v10, v5

    .line 7
    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move v10, v1

    move-object v11, v5

    .line 8
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/android/gms/common/api/internal/zak;->zaa:Z

    if-eqz v9, :cond_0

    move-object v9, v4

    if-nez v9, :cond_0

    move-object v9, v2

    .line 9
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v1, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v3, v9

    move-object v9, v3

    move v10, v1

    const/16 v11, 0xb

    add-int/lit8 v10, v10, 0xb

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v3

    const-string v10, "connecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v9, "AutoManageHelper"

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object v9, v2

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :goto_1
    return-void

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    move v4, v9

    goto/16 :goto_0
.end method

.method public final zac(I)V
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move v4, v1

    .line 1
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zaj;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move v4, v1

    .line 2
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v4, v2

    .line 3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v3, v2

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method protected final zad(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v4, "AutoManageHelper"

    const-string v5, "Unresolved error while connecting client. Stopping auto-manage."

    .line 1
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v4, v2

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/Exception;

    move-object v0, v4

    move-object v4, v0

    .line 2
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v4, "AutoManageHelper"

    const-string v5, "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set"

    move-object v6, v0

    invoke-static {v4, v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 5
    :goto_0
    return-void

    .line 2
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    move v5, v2

    .line 3
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zaj;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    move v5, v2

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zak;->zac(I)V

    move-object v4, v3

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zaj;->zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v0, v4

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    .line 5
    invoke-interface {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    goto :goto_0
.end method

.method protected final zae()V
    .locals 5

    .prologue
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v3, v0

    move v4, v1

    .line 2
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
