.class final Landroidx/fragment/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$inFragment:Landroidx/fragment/app/Fragment;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroidx/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 397
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 398
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 400
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$2;->val$inFragment:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    .line 402
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 405
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 408
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 409
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 412
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 413
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 415
    :cond_2
    return-void
.end method
