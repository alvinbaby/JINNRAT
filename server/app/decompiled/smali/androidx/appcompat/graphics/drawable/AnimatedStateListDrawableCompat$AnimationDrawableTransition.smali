.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 16

    .prologue
    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 393
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v9

    move v4, v9

    .line 394
    move v9, v2

    if-eqz v9, :cond_1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_0
    move v5, v9

    .line 395
    move v9, v2

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    move v6, v9

    .line 396
    new-instance v9, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    move v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    move-object v7, v9

    .line 398
    move-object v9, v1

    const-string v10, "currentIndex"

    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v5

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v6

    aput v14, v12, v13

    .line 399
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v8, v9

    .line 400
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v9, v10, :cond_0

    .line 401
    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 403
    :cond_0
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->getTotalDuration()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 404
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    move-object v9, v0

    move v10, v3

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    .line 406
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    .line 407
    return-void

    .line 394
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 395
    :cond_2
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1
.end method


# virtual methods
.method public canReverse()Z
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    move v0, v1

    return v0
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 422
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 427
    return-void
.end method
