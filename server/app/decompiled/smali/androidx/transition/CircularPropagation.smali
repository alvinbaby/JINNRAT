.class public Landroidx/transition/CircularPropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 101
    sub-float v0, p2, p0

    .line 102
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 103
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 19
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroidx/transition/Transition;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .prologue
    .line 59
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 60
    const-wide/16 v16, 0x0

    .line 97
    :goto_0
    return-wide v16

    .line 62
    :cond_0
    const/4 v2, 0x1

    .line 64
    .local v2, "directionMultiplier":I
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroidx/transition/CircularPropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v15

    if-nez v15, :cond_3

    .line 65
    :cond_1
    move-object/from16 v12, p3

    .line 66
    .local v12, "positionValues":Landroidx/transition/TransitionValues;
    const/4 v2, -0x1

    .line 71
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroidx/transition/CircularPropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v13

    .line 72
    .local v13, "viewCenterX":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroidx/transition/CircularPropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v14

    .line 74
    .local v14, "viewCenterY":I
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    .line 77
    .local v5, "epicenter":Landroid/graphics/Rect;
    if-eqz v5, :cond_4

    .line 78
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 79
    .local v8, "epicenterX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 88
    .local v9, "epicenterY":I
    :goto_2
    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    move-result v3

    .line 89
    .local v3, "distance":F
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroidx/transition/CircularPropagation;->distance(FFFF)F

    move-result v11

    .line 90
    .local v11, "maxDistance":F
    div-float v4, v3, v11

    .line 92
    .local v4, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v6

    .line 93
    .local v6, "duration":J
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_2

    .line 94
    const-wide/16 v6, 0x12c

    .line 97
    :cond_2
    int-to-long v0, v2

    move-wide/from16 v16, v0

    mul-long v16, v16, v6

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    goto :goto_0

    .line 68
    .end local v3    # "distance":F
    .end local v4    # "distanceFraction":F
    .end local v5    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "duration":J
    .end local v8    # "epicenterX":I
    .end local v9    # "epicenterY":I
    .end local v11    # "maxDistance":F
    .end local v12    # "positionValues":Landroidx/transition/TransitionValues;
    .end local v13    # "viewCenterX":I
    .end local v14    # "viewCenterY":I
    :cond_3
    move-object/from16 v12, p4

    .restart local v12    # "positionValues":Landroidx/transition/TransitionValues;
    goto :goto_1

    .line 81
    .restart local v5    # "epicenter":Landroid/graphics/Rect;
    .restart local v13    # "viewCenterX":I
    .restart local v14    # "viewCenterY":I
    :cond_4
    const/4 v15, 0x2

    new-array v10, v15, [I

    .line 82
    .local v10, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 83
    const/4 v15, 0x0

    aget v15, v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v16

    add-float v15, v15, v16

    .line 83
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 85
    .restart local v8    # "epicenterX":I
    const/4 v15, 0x1

    aget v15, v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v16

    add-float v15, v15, v16

    .line 85
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9    # "epicenterY":I
    goto/16 :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    .prologue
    .line 50
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput p1, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    .line 54
    return-void
.end method
