.class final Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragForce"
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private mFriction:F

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 202
    move-object v1, v0

    const v2, -0x3f79999a    # -4.2f

    iput v2, v1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 206
    move-object v1, v0

    new-instance v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v2, v1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, v4

    move v0, v3

    return v0
.end method

.method getFrictionScalar()F
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    const v2, -0x3f79999a    # -4.2f

    div-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 5

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setFrictionScalar(F)V
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const v4, -0x3f79999a    # -4.2f

    mul-float/2addr v3, v4

    iput v3, v2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 210
    return-void
.end method

.method setValueThreshold(F)V
    .locals 5

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x427a0000    # 62.5f

    mul-float/2addr v3, v4

    iput v3, v2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 238
    return-void
.end method

.method updateValueAndVelocity(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .locals 13

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move v6, v2

    float-to-double v6, v6

    move-wide v8, v3

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 218
    move-object v5, v0

    iget-object v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move v6, v1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    move-object v10, v0

    iget v10, v10, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    move-wide v11, v3

    long-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    .line 219
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 220
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    move-object v7, v0

    iget-object v7, v7, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v7, v7, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {v5, v6, v7}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    move-object v5, v0

    iget-object v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    const/4 v6, 0x0

    iput v6, v5, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 223
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-object v0, v5

    return-object v0
.end method
