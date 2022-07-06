.class public Landroidx/dynamicanimation/animation/FloatValueHolder;
.super Ljava/lang/Object;
.source "FloatValueHolder.java"


# instance fields
.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 46
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 54
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 55
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    move v0, v1

    return v0
.end method

.method public setValue(F)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 64
    return-void
.end method
