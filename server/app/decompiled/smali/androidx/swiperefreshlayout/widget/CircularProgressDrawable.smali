.class public Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;,
        Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    sput-object v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 139
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 141
    move-object v2, v0

    new-instance v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 142
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    sget-object v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 144
    move-object v2, v0

    const/high16 v3, 0x40200000    # 2.5f

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 145
    move-object v2, v0

    invoke-direct {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V

    .line 146
    return-void
.end method

.method private applyFinishTranslation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 10

    .prologue
    .line 519
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 520
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-float v6, v6

    move v3, v6

    .line 522
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v6

    move-object v7, v2

    .line 523
    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    sub-float/2addr v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v8

    sub-float/2addr v7, v8

    move v8, v1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v4, v6

    .line 525
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 526
    move-object v6, v2

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 527
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v6

    move v7, v3

    move-object v8, v2

    .line 528
    invoke-virtual {v8}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v8

    sub-float/2addr v7, v8

    move v8, v1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v5, v6

    .line 529
    move-object v6, v2

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 530
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 17

    .prologue
    .line 479
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v12, v2

    const/16 v13, 0x18

    shr-int/lit8 v12, v12, 0x18

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v4, v12

    .line 480
    move v12, v2

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v5, v12

    .line 481
    move v12, v2

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v6, v12

    .line 482
    move v12, v2

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v7, v12

    .line 484
    move v12, v3

    const/16 v13, 0x18

    shr-int/lit8 v12, v12, 0x18

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v8, v12

    .line 485
    move v12, v3

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v9, v12

    .line 486
    move v12, v3

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v10, v12

    .line 487
    move v12, v3

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v11, v12

    .line 489
    move v12, v4

    move v13, v1

    move v14, v8

    move v15, v4

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    const/16 v13, 0x18

    shl-int/lit8 v12, v12, 0x18

    move v13, v5

    move v14, v1

    move v15, v9

    move/from16 v16, v5

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    move v13, v6

    move v14, v1

    move v15, v10

    move/from16 v16, v6

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    const/16 v14, 0x8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    move v13, v7

    move v14, v1

    move v15, v11

    move/from16 v16, v7

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    or-int/2addr v12, v13

    move v0, v12

    return v0
.end method

.method private getRotation()F
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    move v0, v1

    return v0
.end method

.method private setRotation(F)V
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    .line 425
    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 12

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v5, v8

    .line 152
    move-object v8, v0

    iget-object v8, v8, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    move-object v6, v8

    .line 153
    move-object v8, v6

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    move v7, v8

    .line 155
    move-object v8, v5

    move v9, v2

    move v10, v7

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 156
    move-object v8, v5

    move v9, v1

    move v10, v7

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 157
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 158
    move-object v8, v5

    move v9, v3

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v4

    move v11, v7

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 159
    return-void
.end method

.method private setupAnimators()V
    .locals 9

    .prologue
    .line 569
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v1, v3

    .line 570
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object v2, v3

    .line 571
    move-object v3, v2

    new-instance v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 580
    move-object v3, v2

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 581
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 582
    move-object v3, v2

    sget-object v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    move-object v3, v2

    new-instance v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;-><init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    .line 619
    return-void

    .line 570
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method applyTransformation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V
    .locals 14

    .prologue
    .line 537
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v9, :cond_1

    .line 538
    move-object v9, v0

    move v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyFinishTranslation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    move v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    move v9, v3

    if-eqz v9, :cond_0

    .line 542
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    move v4, v9

    .line 545
    move v9, v1

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 546
    move v9, v1

    const/high16 v10, 0x3f000000    # 0.5f

    div-float/2addr v9, v10

    move v7, v9

    .line 547
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    move v5, v9

    .line 548
    move v9, v5

    const v10, 0x3f4a3d71    # 0.79f

    sget-object v11, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move v12, v7

    .line 549
    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    const v11, 0x3c23d70a    # 0.01f

    add-float/2addr v10, v11

    add-float/2addr v9, v10

    move v6, v9

    .line 558
    :goto_1
    move v9, v4

    const v10, 0x3e570a3c    # 0.20999998f

    move v11, v1

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v7, v9

    .line 559
    const/high16 v9, 0x43580000    # 216.0f

    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v8, v9

    .line 561
    move-object v9, v2

    move v10, v5

    invoke-virtual {v9, v10}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 562
    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 563
    move-object v9, v2

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 564
    move-object v9, v0

    move v10, v8

    invoke-direct {v9, v10}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    goto :goto_0

    .line 551
    :cond_3
    move v9, v1

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    div-float/2addr v9, v10

    move v7, v9

    .line 552
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    const v10, 0x3f4a3d71    # 0.79f

    add-float/2addr v9, v10

    move v6, v9

    .line 553
    move v9, v6

    const v10, 0x3f4a3d71    # 0.79f

    const/high16 v11, 0x3f800000    # 1.0f

    sget-object v12, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move v13, v7

    .line 554
    invoke-interface {v12, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    const v11, 0x3c23d70a    # 0.01f

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    move v5, v9

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object v2, v3

    .line 400
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 401
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 402
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 403
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 404
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getArrowEnabled()Z
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getShowArrow()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getArrowHeight()F
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowHeight()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getArrowScale()F
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowScale()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getArrowWidth()F
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowWidth()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCenterRadius()F
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getCenterRadius()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getColorSchemeColors()[I
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getColors()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getEndTrim()F
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 436
    move-object v0, p0

    const/4 v1, -0x3

    move v0, v1

    return v0
.end method

.method public getProgressRotation()F
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getRotation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStartTrim()F
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 409
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 410
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 6

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 262
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 263
    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 281
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 282
    return-void
.end method

.method public setArrowScale(F)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 300
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 301
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 372
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 373
    return-void
.end method

.method public setCenterRadius(F)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 213
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 214
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 420
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 421
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 393
    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 394
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 395
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 351
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 352
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 331
    move-object v3, v0

    iget-object v3, v3, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 332
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 333
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 4
    .param p1    # Landroid/graphics/Paint$Cap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 223
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 224
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 193
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 194
    return-void
.end method

.method public setStyle(I)V
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 169
    move-object v2, v0

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 174
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 175
    return-void

    .line 172
    :cond_0
    move-object v2, v0

    const/high16 v3, 0x40f00000    # 7.5f

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 450
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 452
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 453
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 454
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 455
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 458
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 459
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x534

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 460
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 470
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    .line 471
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 472
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 473
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 474
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 475
    return-void
.end method

.method updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 8

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/high16 v4, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 503
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    const/high16 v6, 0x3f400000    # 0.75f

    sub-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    div-float/2addr v5, v6

    move-object v6, v2

    .line 504
    invoke-virtual {v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v6

    move-object v7, v2

    .line 505
    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v7

    .line 503
    invoke-direct {v4, v5, v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_0
.end method
