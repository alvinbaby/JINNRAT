.class final Lcom/google/android/gms/internal/base/zah;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field zaa:I

.field zab:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/zah;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/base/zah;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/internal/base/zah;->zaa:I

    iput v3, v2, Lcom/google/android/gms/internal/base/zah;->zaa:I

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/internal/base/zah;->zab:I

    iput v3, v2, Lcom/google/android/gms/internal/base/zah;->zab:I

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/internal/base/zah;->zaa:I

    move v0, v1

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/internal/base/zai;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/base/zai;-><init>(Lcom/google/android/gms/internal/base/zah;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
