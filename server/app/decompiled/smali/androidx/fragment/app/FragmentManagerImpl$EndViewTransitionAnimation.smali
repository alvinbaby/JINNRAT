.class Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;
.source "FragmentManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3433
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3429
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3434
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    .line 3435
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    .line 3436
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3439
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 3440
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9

    .prologue
    .line 3444
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3445
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v5, :cond_1

    .line 3446
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 3453
    :goto_1
    return v0

    .line 3446
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 3448
    :cond_1
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v5

    move v4, v5

    .line 3449
    move v5, v4

    if-nez v5, :cond_2

    .line 3450
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    .line 3451
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-static {v5, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v5

    .line 3453
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 13

    .prologue
    .line 3459
    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3460
    move-object v7, v1

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v7, :cond_1

    .line 3461
    move-object v7, v1

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v1, v7

    .line 3468
    :goto_1
    return v1

    .line 3461
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 3463
    :cond_1
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    move v11, v5

    invoke-super {v7, v8, v9, v10, v11}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v7

    move v6, v7

    .line 3464
    move v7, v6

    if-nez v7, :cond_2

    .line 3465
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    .line 3466
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    move-object v8, v1

    invoke-static {v7, v8}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v7

    .line 3468
    :cond_2
    const/4 v7, 0x1

    move v1, v7

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 3473
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v1, :cond_0

    .line 3474
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3476
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 3481
    :goto_0
    return-void

    .line 3478
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 3479
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    goto :goto_0
.end method
