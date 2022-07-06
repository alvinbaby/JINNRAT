.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v1, v0

    const-wide v2, 0x4097700000000000L    # 1500.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 85
    move-object v1, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 104
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 107
    move-object v1, v0

    new-instance v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 115
    return-void
.end method

.method public constructor <init>(F)V
    .locals 7

    .prologue
    .line 122
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v3, v1

    const-wide v4, 0x4097700000000000L    # 1500.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 85
    move-object v3, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 91
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 104
    move-object v3, v1

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 107
    move-object v3, v1

    new-instance v4, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 123
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 124
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_1
    move-object v1, v0

    iget-wide v1, v1, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 258
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v2, v2

    move-object v4, v0

    iget-wide v4, v4, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v2, v4

    move-object v4, v0

    iget-wide v4, v4, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-object v6, v0

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-object v8, v0

    iget-wide v8, v8, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    .line 259
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 260
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v2, v2

    move-object v4, v0

    iget-wide v4, v4, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v2, v4

    move-object v4, v0

    iget-wide v4, v4, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-object v6, v0

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-object v8, v0

    iget-wide v8, v8, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    .line 261
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 267
    :cond_2
    :goto_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 268
    goto :goto_0

    .line 262
    :cond_3
    move-object v1, v0

    iget-wide v1, v1, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    move-object v1, v0

    iget-wide v1, v1, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 264
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v6, v0

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-object v8, v0

    iget-wide v8, v8, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, v1, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    goto :goto_1
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 14
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 218
    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v9

    sub-float/2addr v8, v9

    move v2, v8

    .line 220
    move-object v8, v1

    iget-wide v8, v8, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-object v10, v1

    iget-wide v10, v10, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v8, v10

    move-wide v4, v8

    .line 221
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object v10, v1

    iget-wide v10, v10, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v8, v10

    move-wide v6, v8

    .line 223
    move-wide v8, v4

    neg-double v8, v8

    move v10, v2

    float-to-double v10, v10

    mul-double/2addr v8, v10

    move-wide v10, v6

    move v12, v3

    float-to-double v12, v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v8, v8

    move v1, v8

    return v1
.end method

.method public getDampingRatio()F
    .locals 4

    .prologue
    .line 186
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    double-to-float v2, v2

    move v1, v2

    return v1
.end method

.method public getFinalPosition()F
    .locals 4

    .prologue
    .line 206
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v2, v2

    move v1, v2

    return v1
.end method

.method public getStiffness()F
    .locals 6

    .prologue
    .line 152
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-object v4, v1

    iget-wide v4, v4, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move v1, v2

    return v1
.end method

.method public isAtEquilibrium(FF)Z
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 232
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    move-object v6, v1

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move v4, v2

    move-object v5, v1

    .line 233
    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    move-object v6, v1

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 234
    const/4 v4, 0x1

    move v1, v4

    .line 236
    :goto_0
    return v1

    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 7
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 171
    move-object v1, p0

    move v2, p1

    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Damping ratio must be non-negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 176
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 177
    move-object v3, v1

    move-object v1, v3

    return-object v1
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 6

    .prologue
    .line 196
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 197
    move-object v3, v1

    move-object v1, v3

    return-object v1
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 7
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 137
    move-object v1, p0

    move v2, p1

    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 138
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Spring stiffness constant must be positive."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 142
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 143
    move-object v3, v1

    move-object v1, v3

    return-object v1
.end method

.method setValueThreshold(D)V
    .locals 9

    .prologue
    .line 329
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 330
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v6, 0x404f400000000000L    # 62.5

    mul-double/2addr v4, v6

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 331
    return-void
.end method

.method updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 33

    .prologue
    .line 276
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v20}, Landroidx/dynamicanimation/animation/SpringForce;->init()V

    .line 278
    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 279
    move-wide/from16 v20, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v4, v20

    .line 282
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 284
    move-wide/from16 v20, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    move-wide/from16 v24, v6

    sub-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    div-double v22, v22, v24

    sub-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 286
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v4

    mul-double v20, v20, v22

    move-wide/from16 v22, v6

    sub-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    div-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 288
    move-wide/from16 v20, v16

    const-wide v22, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v22, v18

    const-wide v24, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    .line 289
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 290
    move-wide/from16 v20, v16

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v22, v18

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    .line 291
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 313
    :goto_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object/from16 v20, v0

    move-wide/from16 v21, v12

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    move-wide/from16 v23, v0

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 314
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object/from16 v20, v0

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 315
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object/from16 v20, v0

    move-object/from16 v3, v20

    return-object v3

    .line 292
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_1

    .line 294
    move-wide/from16 v20, v4

    move-wide/from16 v16, v20

    .line 295
    move-wide/from16 v20, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 296
    move-wide/from16 v20, v16

    move-wide/from16 v22, v18

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 297
    move-wide/from16 v20, v16

    move-wide/from16 v22, v18

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    mul-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v22, v18

    const-wide v24, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    .line 298
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 299
    goto/16 :goto_0

    .line 301
    :cond_1
    move-wide/from16 v20, v4

    move-wide/from16 v16, v20

    .line 302
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v24, v4

    mul-double v22, v22, v24

    move-wide/from16 v24, v6

    add-double v22, v22, v24

    mul-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 304
    const-wide v20, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v24, v10

    mul-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v22, v16

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v10

    mul-double v24, v24, v26

    .line 305
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v24, v18

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    .line 306
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 307
    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v26, v10

    mul-double v24, v24, v26

    .line 308
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v16

    mul-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    mul-double v26, v26, v28

    .line 309
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v26, v0

    move-wide/from16 v28, v18

    mul-double v26, v26, v28

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 v28, v0

    move-wide/from16 v30, v10

    mul-double v28, v28, v30

    .line 310
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    goto/16 :goto_0
.end method
