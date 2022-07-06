.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation",
        "<",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 43
    move-object v2, v0

    new-instance v3, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v3, v2, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 59
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 7
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
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 43
    move-object v3, v0

    new-instance v4, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 71
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 72
    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v3

    move v0, v3

    return v0
.end method

.method public getFriction()F
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v1

    move v0, v1

    return v0
.end method

.method isAtEquilibrium(FF)Z
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move v4, v1

    move v5, v2

    .line 186
    invoke-virtual {v3, v4, v5}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 184
    :goto_0
    move v0, v3

    return v0

    .line 186
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Friction must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 88
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    .line 124
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    .line 111
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    .line 151
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setValueThreshold(F)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 192
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 11

    .prologue
    .line 157
    move-object v1, p0

    move-wide v2, p1

    move-object v5, v1

    iget-object v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    move-object v7, v1

    iget v7, v7, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    move-wide v8, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v5

    move-object v4, v5

    .line 158
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v6, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 159
    move-object v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v6, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    .line 162
    move-object v5, v1

    iget v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 163
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    iput v6, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 164
    const/4 v5, 0x1

    move v1, v5

    .line 174
    :goto_0
    return v1

    .line 166
    :cond_0
    move-object v5, v1

    iget v5, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 167
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    iput v6, v5, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 168
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 171
    :cond_1
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    move-object v7, v1

    iget v7, v7, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v5, v6, v7}, Landroidx/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 174
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0
.end method
