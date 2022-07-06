.class public final Lcom/google/android/gms/common/images/zae;
.super Lcom/google/android/gms/common/images/zag;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zac:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move v5, v2

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

    iput-object v4, v3, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    move-object v3, v1

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 6
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 5
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/images/zae;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/images/zae;

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object v0, v2

    move-object v2, v1

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

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

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_8

    move v6, v3

    if-nez v6, :cond_0

    move v6, v4

    if-nez v6, :cond_0

    move-object v6, v5

    .line 2
    instance-of v6, v6, Lcom/google/android/gms/internal/base/zaj;

    if-nez v6, :cond_7

    :cond_0
    move v6, v3

    if-nez v6, :cond_5

    move v6, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    move v6, v0

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 3
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_3

    move-object v6, v2

    .line 4
    instance-of v6, v6, Lcom/google/android/gms/internal/base/zai;

    if-eqz v6, :cond_1

    move-object v6, v2

    .line 5
    check-cast v6, Lcom/google/android/gms/internal/base/zai;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/base/zai;->zab()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v2, v6

    :cond_1
    :goto_1
    new-instance v6, Lcom/google/android/gms/internal/base/zai;

    move-object v3, v6

    move-object v6, v3

    move-object v7, v2

    move-object v8, v1

    .line 6
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/base/zai;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v6, v3

    move-object v1, v6

    :cond_2
    move-object v6, v5

    move-object v7, v1

    .line 7
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v5

    .line 8
    instance-of v6, v6, Lcom/google/android/gms/internal/base/zaj;

    if-nez v6, :cond_6

    move-object v6, v1

    if-eqz v6, :cond_8

    move v6, v0

    if-eqz v6, :cond_8

    move-object v6, v1

    .line 9
    check-cast v6, Lcom/google/android/gms/internal/base/zai;

    const/16 v7, 0xfa

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/base/zai;->zac(I)V

    .line 11
    :goto_2
    return-void

    .line 9
    :cond_3
    const/4 v6, 0x0

    move-object v2, v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_6
    move-object v6, v5

    .line 10
    check-cast v6, Lcom/google/android/gms/internal/base/zaj;

    const/4 v6, 0x0

    throw v6

    :cond_7
    move-object v6, v5

    .line 11
    check-cast v6, Lcom/google/android/gms/internal/base/zaj;

    const/4 v6, 0x0

    throw v6

    :cond_8
    goto :goto_2
.end method
