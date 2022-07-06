.class public final Lcom/google/android/gms/dynamic/ObjectWrapper;
.super Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/dynamic/ObjectWrapper;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .locals 10
    .param p0    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")TT;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v7, v0

    .line 1
    instance-of v7, v7, Lcom/google/android/gms/dynamic/ObjectWrapper;

    if-eqz v7, :cond_0

    move-object v7, v0

    .line 2
    check-cast v7, Lcom/google/android/gms/dynamic/ObjectWrapper;

    iget-object v7, v7, Lcom/google/android/gms/dynamic/ObjectWrapper;->zza:Ljava/lang/Object;

    move-object v0, v7

    .line 12
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v7, v0

    .line 3
    invoke-interface {v7}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    .line 4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 5
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    .line 6
    array-length v7, v7

    move v6, v7

    const/4 v7, 0x0

    move-object v0, v7

    const/4 v7, 0x0

    move v1, v7

    const/4 v7, 0x0

    move v2, v7

    :goto_1
    move v7, v2

    move v8, v6

    if-ge v7, v8, :cond_2

    move-object v7, v5

    move v8, v2

    aget-object v7, v7, v8

    move-object v3, v7

    move-object v7, v3

    .line 7
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    move-object v7, v3

    move-object v0, v7

    move v7, v1

    move v3, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v7, v3

    move v1, v7

    goto :goto_1

    :cond_1
    move v7, v1

    move v3, v7

    goto :goto_2

    :cond_2
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    move-object v7, v0

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    const/4 v8, 0x1

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v7, v0

    move-object v8, v4

    .line 10
    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    .line 12
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 10
    :catch_0
    move-exception v7

    move-object v0, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v1, v7

    move-object v7, v1

    const-string v8, "Could not access the field in remoteBinder."

    move-object v9, v0

    .line 11
    invoke-direct {v7, v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v1

    throw v7

    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v0, v7

    move-object v7, v5

    .line 14
    array-length v7, v7

    move v1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v2, v7

    move-object v7, v2

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v2

    const-string v8, "Unexpected number of IObjectWrapper declared fields: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v2

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v0, v7

    move-object v7, v0

    const-string v8, "IObjectWrapper declared field not private!"

    .line 13
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    throw v7

    :catch_1
    move-exception v7

    move-object v0, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v1, v7

    move-object v7, v1

    const-string v8, "Binder object is null."

    move-object v9, v0

    .line 12
    invoke-direct {v7, v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v1

    throw v7
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
