.class public final Lcom/google/android/gms/common/images/zaf;
.super Lcom/google/android/gms/common/images/zag;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zac:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    .line 1
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    move-object v3, v1

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 3
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .line 6
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v4, v1

    .line 1
    instance-of v4, v4, Lcom/google/android/gms/common/images/zaf;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 2
    check-cast v4, Lcom/google/android/gms/common/images/zaf;

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    move-object v2, v4

    move-object v4, v1

    .line 4
    iget-object v4, v4, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v2

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    move-object v0, p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    aput-object v4, v2, v3

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 9
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v3

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    iget-object v6, v6, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    move-object v7, v1

    move v8, v4

    .line 2
    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
