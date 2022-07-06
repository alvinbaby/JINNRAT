.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation",
        "<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    move-object v2, v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 62
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 101
    move-object v3, v0

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v2

    invoke-direct {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 62
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat",
            "<TK;>;F)V"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 62
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    move-object v4, v0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    iput v5, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 130
    move-object v4, v0

    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v3

    invoke-direct {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v5, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 131
    return-void
.end method

.method private sanityCheck()V
    .locals 9

    .prologue
    .line 241
    move-object v1, p0

    move-object v4, v1

    iget-object v4, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v4, :cond_0

    .line 242
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v4

    float-to-double v4, v4

    move-wide v2, v4

    .line 246
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    float-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 247
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_1
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    float-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 250
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Final position of the spring cannot be less than the min value."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 253
    :cond_2
    return-void
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v2, :cond_1

    .line 180
    move-object v2, v0

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 182
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 183
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0
.end method

.method public canSkipToEnd()Z
    .locals 6

    .prologue
    .line 235
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v2, v2, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 197
    move-object v1, v0

    iget v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 198
    move-object v1, v0

    iget-object v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v1, :cond_1

    .line 199
    move-object v1, v0

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget v4, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 203
    :goto_0
    move-object v1, v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 205
    :cond_0
    return-void

    .line 201
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v2, v0

    iget v2, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    goto :goto_0
.end method

.method getAcceleration(FF)F
    .locals 6

    .prologue
    .line 300
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->getAcceleration(FF)F

    move-result v3

    move v0, v3

    return v0
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v0, v1

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .locals 6

    .prologue
    .line 305
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 152
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setValueThreshold(F)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public skipToEnd()V
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Spring animations can only come to an end when there is damping"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 222
    new-instance v1, Landroid/util/AndroidRuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Animations may only be started on the main thread"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v1, :cond_2

    .line 225
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 227
    :cond_2
    return-void
.end method

.method public start()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getValueThreshold()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    .line 160
    move-object v1, v0

    invoke-super {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 161
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 15

    .prologue
    .line 259
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    if-eqz v5, :cond_1

    .line 260
    move-object v5, v1

    iget v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 261
    move-object v5, v1

    iget-object v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    .line 262
    move-object v5, v1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 264
    :cond_0
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v6

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 265
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 266
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 267
    const/4 v5, 0x1

    move v1, v5

    .line 295
    :goto_0
    return v1

    .line 270
    :cond_1
    move-object v5, v1

    iget v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 273
    move-object v5, v1

    iget-object v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v6, v6

    move-object v8, v1

    iget v8, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v8, v8

    move-wide v10, v2

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    invoke-virtual/range {v5 .. v11}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    move-object v4, v5

    .line 274
    move-object v5, v1

    iget-object v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    .line 275
    move-object v5, v1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 277
    move-object v5, v1

    iget-object v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v6, v6

    move-object v8, v4

    iget v8, v8, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v8, v8

    move-wide v10, v2

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    invoke-virtual/range {v5 .. v11}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    move-object v4, v5

    .line 278
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 279
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 287
    :goto_1
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    move-object v7, v1

    iget v7, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 288
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    move-object v7, v1

    iget v7, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 290
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    move-object v7, v1

    iget v7, v7, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    invoke-virtual {v5, v6, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v6

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 292
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 293
    const/4 v5, 0x1

    move v1, v5

    goto/16 :goto_0

    .line 282
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v6, v6

    move-object v8, v1

    iget v8, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v8, v8

    move-wide v10, v2

    invoke-virtual/range {v5 .. v11}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    move-object v4, v5

    .line 283
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 284
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v6, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    goto :goto_1

    .line 295
    :cond_3
    const/4 v5, 0x0

    move v1, v5

    goto/16 :goto_0
.end method
