.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 36
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 37
    const/16 v0, 0x50

    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    .prologue
    .line 125
    iget v3, p0, Landroidx/transition/SidePropagation;->mSide:I

    const v4, 0x800003

    if-ne v3, v4, :cond_2

    .line 126
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 128
    .local v1, "isRtl":Z
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x5

    .line 136
    .end local v1    # "isRtl":Z
    .local v2, "side":I
    :goto_1
    const/4 v0, 0x0

    .line 137
    .local v0, "distance":I
    sparse-switch v2, :sswitch_data_0

    .line 151
    :goto_2
    return v0

    .line 126
    .end local v0    # "distance":I
    .end local v2    # "side":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    .restart local v1    # "isRtl":Z
    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    .line 129
    .end local v1    # "isRtl":Z
    :cond_2
    iget v3, p0, Landroidx/transition/SidePropagation;->mSide:I

    const v4, 0x800005

    if-ne v3, v4, :cond_5

    .line 130
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 132
    .restart local v1    # "isRtl":Z
    :goto_3
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    .line 133
    .restart local v2    # "side":I
    :goto_4
    goto :goto_1

    .line 130
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 132
    .restart local v1    # "isRtl":Z
    :cond_4
    const/4 v2, 0x5

    goto :goto_4

    .line 134
    .end local v1    # "isRtl":Z
    :cond_5
    iget v2, p0, Landroidx/transition/SidePropagation;->mSide:I

    .restart local v2    # "side":I
    goto :goto_1

    .line 139
    .restart local v0    # "distance":I
    :sswitch_0
    sub-int v3, p8, p2

    sub-int v4, p5, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    .line 140
    goto :goto_2

    .line 142
    :sswitch_1
    sub-int v3, p9, p3

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    .line 143
    goto :goto_2

    .line 145
    :sswitch_2
    sub-int v3, p2, p6

    sub-int v4, p5, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    .line 146
    goto :goto_2

    .line 148
    :sswitch_3
    sub-int v3, p3, p7

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    sparse-switch v0, :sswitch_data_0

    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 160
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroidx/transition/Transition;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .prologue
    .line 76
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 77
    const-wide/16 v2, 0x0

    .line 119
    :goto_0
    return-wide v2

    .line 79
    :cond_0
    const/4 v12, 0x1

    .line 80
    .local v12, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v15

    .line 82
    .local v15, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroidx/transition/SidePropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v2

    if-nez v2, :cond_3

    .line 83
    :cond_1
    move-object/from16 v20, p3

    .line 84
    .local v20, "positionValues":Landroidx/transition/TransitionValues;
    const/4 v12, -0x1

    .line 89
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroidx/transition/SidePropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v4

    .line 90
    .local v4, "viewCenterX":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroidx/transition/SidePropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v5

    .line 92
    .local v5, "viewCenterY":I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 93
    .local v18, "loc":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 94
    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v8, v2, v3

    .line 95
    .local v8, "left":I
    const/4 v2, 0x1

    aget v2, v18, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v9, v2, v3

    .line 96
    .local v9, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int v10, v8, v2

    .line 97
    .local v10, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int v11, v9, v2

    .line 101
    .local v11, "bottom":I
    if-eqz v15, :cond_4

    .line 102
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 103
    .local v6, "epicenterX":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .local v7, "epicenterY":I
    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 109
    invoke-direct/range {v2 .. v11}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v2

    int-to-float v13, v2

    .line 111
    .local v13, "distance":F
    invoke-direct/range {p0 .. p1}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v19, v0

    .line 112
    .local v19, "maxDistance":F
    div-float v14, v13, v19

    .line 114
    .local v14, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v16

    .line 115
    .local v16, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gez v2, :cond_2

    .line 116
    const-wide/16 v16, 0x12c

    .line 119
    :cond_2
    int-to-long v2, v12

    mul-long v2, v2, v16

    long-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    goto/16 :goto_0

    .line 86
    .end local v4    # "viewCenterX":I
    .end local v5    # "viewCenterY":I
    .end local v6    # "epicenterX":I
    .end local v7    # "epicenterY":I
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    .end local v13    # "distance":F
    .end local v14    # "distanceFraction":F
    .end local v16    # "duration":J
    .end local v18    # "loc":[I
    .end local v19    # "maxDistance":F
    .end local v20    # "positionValues":Landroidx/transition/TransitionValues;
    :cond_3
    move-object/from16 v20, p4

    .restart local v20    # "positionValues":Landroidx/transition/TransitionValues;
    goto :goto_1

    .line 105
    .restart local v4    # "viewCenterX":I
    .restart local v5    # "viewCenterY":I
    .restart local v8    # "left":I
    .restart local v9    # "top":I
    .restart local v10    # "right":I
    .restart local v11    # "bottom":I
    .restart local v18    # "loc":[I
    :cond_4
    add-int v2, v8, v10

    div-int/lit8 v6, v2, 0x2

    .line 106
    .restart local v6    # "epicenterX":I
    add-int v2, v9, v11

    div-int/lit8 v7, v2, 0x2

    .restart local v7    # "epicenterY":I
    goto :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    .prologue
    .line 67
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput p1, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 71
    return-void
.end method

.method public setSide(I)V
    .locals 0
    .param p1, "side"    # I

    .prologue
    .line 51
    iput p1, p0, Landroidx/transition/SidePropagation;->mSide:I

    .line 52
    return-void
.end method
