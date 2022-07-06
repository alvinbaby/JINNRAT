.class public final Lcom/google/android/gms/internal/base/zai;
.super Landroid/graphics/drawable/Drawable;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private zaa:I

.field private zab:J

.field private zac:I

.field private zad:I

.field private zae:I

.field private zaf:I

.field private zag:Z

.field private zah:Z

.field private zai:Lcom/google/android/gms/internal/base/zah;

.field private zaj:Landroid/graphics/drawable/Drawable;

.field private zak:Landroid/graphics/drawable/Drawable;

.field private zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const/4 v5, 0x0

    .line 1
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/base/zai;-><init>(Lcom/google/android/gms/internal/base/zah;)V

    move-object v4, v1

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/base/zag;->zaa()Lcom/google/android/gms/internal/base/zag;

    move-result-object v4

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    move-object v5, v0

    .line 3
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/base/zai;->zai:Lcom/google/android/gms/internal/base/zah;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v3

    .line 4
    iget v5, v5, Lcom/google/android/gms/internal/base/zah;->zab:I

    move-object v6, v1

    .line 5
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/gms/internal/base/zah;->zab:I

    move-object v4, v2

    if-nez v4, :cond_1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/base/zag;->zaa()Lcom/google/android/gms/internal/base/zag;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    move-object v5, v0

    .line 7
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/base/zai;->zai:Lcom/google/android/gms/internal/base/zah;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v0

    .line 8
    iget v5, v5, Lcom/google/android/gms/internal/base/zah;->zab:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/gms/internal/base/zah;->zab:I

    return-void

    :cond_1
    move-object v4, v2

    move-object v1, v4

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/base/zah;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/base/zah;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    .line 9
    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/gms/internal/base/zai;->zaa:I

    move-object v3, v0

    const/16 v4, 0xff

    iput v4, v3, Lcom/google/android/gms/internal/base/zai;->zad:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/gms/internal/base/zai;->zaf:I

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/internal/base/zai;->zag:Z

    new-instance v3, Lcom/google/android/gms/internal/base/zah;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 10
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/base/zah;-><init>(Lcom/google/android/gms/internal/base/zah;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/internal/base/zai;->zai:Lcom/google/android/gms/internal/base/zah;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    move-object v1, p0

    move-object v2, p1

    move-object v8, v1

    iget v8, v8, Lcom/google/android/gms/internal/base/zai;->zaa:I

    packed-switch v8, :pswitch_data_0

    const/4 v8, 0x1

    move v3, v8

    :goto_0
    move-object v8, v1

    iget v8, v8, Lcom/google/android/gms/internal/base/zai;->zaf:I

    move v4, v8

    move-object v8, v1

    iget-boolean v8, v8, Lcom/google/android/gms/internal/base/zai;->zag:Z

    move v5, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    move-object v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    move-object v7, v8

    move v8, v3

    if-eqz v8, :cond_3

    move v8, v5

    if-eqz v8, :cond_2

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v3, v8

    :goto_1
    move-object v8, v6

    move-object v9, v2

    .line 4
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    move-object v8, v1

    iget v8, v8, Lcom/google/android/gms/internal/base/zai;->zad:I

    move v1, v8

    move v8, v3

    move v9, v1

    if-ne v8, v9, :cond_0

    move-object v8, v7

    move v9, v1

    .line 5
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object v8, v7

    move-object v9, v2

    .line 6
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :goto_3
    return-void

    .line 6
    :cond_0
    goto :goto_3

    :cond_1
    move v8, v4

    move v3, v8

    goto :goto_2

    :cond_2
    move v8, v4

    move v3, v8

    goto :goto_1

    :cond_3
    move v8, v5

    if-eqz v8, :cond_4

    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Lcom/google/android/gms/internal/base/zai;->zad:I

    move v10, v4

    sub-int/2addr v9, v10

    .line 7
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    move-object v8, v6

    move-object v9, v2

    .line 8
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v8, v5

    if-eqz v8, :cond_5

    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Lcom/google/android/gms/internal/base/zai;->zad:I

    .line 9
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    move v8, v4

    if-lez v8, :cond_6

    move-object v8, v7

    move v9, v4

    .line 10
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object v8, v7

    move-object v9, v2

    .line 11
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v8, v7

    move-object v9, v1

    iget v9, v9, Lcom/google/android/gms/internal/base/zai;->zad:I

    .line 12
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    move-object v8, v1

    .line 13
    invoke-virtual {v8}, Lcom/google/android/gms/internal/base/zai;->invalidateSelf()V

    goto :goto_3

    :pswitch_0
    move-object v8, v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/google/android/gms/internal/base/zai;->zab:J

    move-object v8, v1

    const/4 v9, 0x2

    iput v9, v8, Lcom/google/android/gms/internal/base/zai;->zaa:I

    const/4 v8, 0x0

    move v3, v8

    goto :goto_0

    :pswitch_1
    move-object v8, v1

    iget-wide v8, v8, Lcom/google/android/gms/internal/base/zai;->zab:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/google/android/gms/internal/base/zai;->zab:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    move-object v9, v1

    iget v9, v9, Lcom/google/android/gms/internal/base/zai;->zae:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v4, v8

    move v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8

    const/4 v8, 0x1

    move v3, v8

    :goto_4
    move v8, v3

    if-eqz v8, :cond_7

    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Lcom/google/android/gms/internal/base/zai;->zaa:I

    :cond_7
    move v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move v4, v8

    move-object v8, v1

    move-object v9, v1

    iget v9, v9, Lcom/google/android/gms/internal/base/zai;->zac:I

    int-to-float v9, v9

    move v10, v4

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Lcom/google/android/gms/internal/base/zai;->zaf:I

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    move v3, v8

    goto :goto_4

    :cond_9
    const/4 v8, 0x1

    move v3, v8

    goto/16 :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    .line 1
    invoke-super {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    move v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zai:Lcom/google/android/gms/internal/base/zah;

    move-object v0, v2

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/internal/base/zah;->zaa:I

    or-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/internal/base/zah;->zab:I

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/base/zai;->zaa()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zai:Lcom/google/android/gms/internal/base/zah;

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/base/zai;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/base/zah;->zaa:I

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zai:Lcom/google/android/gms/internal/base/zah;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/internal/base/zai;->zan:Z

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/base/zai;->zao:I

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/base/zai;->zan:Z

    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/internal/base/zai;->zao:I

    move v0, v1

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/base/zai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    .line 2
    invoke-interface {v2, v3}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/internal/base/zai;->zah:Z

    if-nez v1, :cond_1

    move-object v1, v0

    .line 1
    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/base/zai;->zaa()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/base/zai;->zah:Z

    :cond_1
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    .line 2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/base/zai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    move-wide v8, v3

    .line 2
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/internal/base/zai;->zaf:I

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/internal/base/zai;->zad:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/gms/internal/base/zai;->zaf:I

    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/gms/internal/base/zai;->zad:I

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/base/zai;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    .line 2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/base/zai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    .line 2
    invoke-interface {v3, v4, v5}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final zaa()Z
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/internal/base/zai;->zal:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zaj:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/gms/internal/base/zai;->zam:Z

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/internal/base/zai;->zal:Z

    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/internal/base/zai;->zam:Z

    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public final zab()Landroid/graphics/drawable/Drawable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/base/zai;->zak:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public final zac(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/internal/base/zai;->zad:I

    iput v3, v2, Lcom/google/android/gms/internal/base/zai;->zac:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/internal/base/zai;->zaf:I

    move-object v2, v0

    const/16 v3, 0xfa

    iput v3, v2, Lcom/google/android/gms/internal/base/zai;->zae:I

    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/base/zai;->zaa:I

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/base/zai;->invalidateSelf()V

    return-void
.end method
