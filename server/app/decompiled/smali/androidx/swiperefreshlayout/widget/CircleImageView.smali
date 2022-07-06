.class Landroidx/swiperefreshlayout/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x50506

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mBackgroundColor:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 15

    .prologue
    .line 58
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    move v2, v8

    .line 61
    move v8, v2

    const/high16 v9, 0x3fe00000    # 1.75f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v3, v8

    .line 62
    move v8, v2

    const/4 v9, 0x0

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v4, v8

    .line 64
    move-object v8, v0

    move v9, v2

    const/high16 v10, 0x40600000    # 3.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 69
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroidx/swiperefreshlayout/R$styleable;->SwipeRefreshLayout:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 70
    move-object v8, v0

    move-object v9, v5

    sget v10, Landroidx/swiperefreshlayout/R$styleable;->SwipeRefreshLayout_swipeRefreshLayoutProgressSpinnerBackgroundColor:I

    const v11, -0x50506

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v8, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    .line 73
    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    move-object v8, v0

    invoke-direct {v8}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Landroid/graphics/drawable/shapes/OvalShape;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v6, v8

    .line 78
    move-object v8, v0

    const/high16 v9, 0x40800000    # 4.0f

    move v10, v2

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 88
    :goto_0
    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    move-object v8, v0

    move-object v9, v6

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void

    .line 80
    :cond_0
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    invoke-direct {v11, v12, v13}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;-><init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v6, v8

    .line 81
    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v6

    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v9, v9

    move v10, v4

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    const/high16 v12, 0x1e000000

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 84
    move-object v8, v0

    iget v8, v8, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    move v7, v8

    .line 86
    move-object v8, v0

    move v9, v7

    move v10, v7

    move v11, v7

    move v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private elevationSupported()Z
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 120
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 121
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 112
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 99
    move-object v3, v0

    invoke-direct {v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 103
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 107
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v2, :cond_0

    .line 128
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    .line 131
    :cond_0
    return-void
.end method
