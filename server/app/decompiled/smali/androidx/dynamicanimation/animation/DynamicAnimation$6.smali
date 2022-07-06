.class final Landroidx/dynamicanimation/animation/DynamicAnimation$6;
.super Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/DynamicAnimation$1;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$6;->getValue(Landroid/view/View;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 138
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation$6;->setValue(Landroid/view/View;F)V

    return-void
.end method
