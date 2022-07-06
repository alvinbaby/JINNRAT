.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 111
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/lifecycle/ViewModel;->mCleared:Z

    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    move-object v2, v0

    instance-of v2, v2, Ljava/io/Closeable;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    return-void

    .line 189
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 190
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method final clear()V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 130
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 131
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 132
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 134
    move-object v5, v3

    invoke-static {v5}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method getTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 178
    const/4 v4, 0x0

    move-object v0, v4

    .line 181
    :goto_0
    return-object v0

    .line 180
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 181
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method protected onCleared()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    monitor-enter v6

    .line 157
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 158
    move-object v6, v3

    if-nez v6, :cond_0

    .line 159
    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 161
    :cond_0
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    move-object v6, v3

    if-nez v6, :cond_2

    move-object v6, v2

    :goto_0
    move-object v4, v6

    .line 163
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/lifecycle/ViewModel;->mCleared:Z

    if-eqz v6, :cond_1

    .line 167
    move-object v6, v4

    invoke-static {v6}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 169
    :cond_1
    move-object v6, v4

    move-object v0, v6

    return-object v0

    .line 161
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6

    .line 162
    :cond_2
    move-object v6, v3

    goto :goto_0
.end method
