.class public abstract Lcom/google/android/gms/common/images/zag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final zaa:Lcom/google/android/gms/common/images/zad;

.field protected zab:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/common/images/zag;->zab:I

    new-instance v4, Lcom/google/android/gms/common/images/zad;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 1
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/images/zad;-><init>(Landroid/net/Uri;)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/images/zag;->zaa:Lcom/google/android/gms/common/images/zad;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/gms/common/images/zag;->zab:I

    return-void
.end method


# virtual methods
.method protected abstract zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final zab(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    .line 2
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method final zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/images/zag;->zab:I

    move v2, v4

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v2

    .line 2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0
.end method
