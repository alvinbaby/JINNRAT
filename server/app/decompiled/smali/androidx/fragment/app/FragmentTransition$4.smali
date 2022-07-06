.class final Landroidx/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Landroidx/collection/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 15

    .prologue
    .line 736
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$nameOverrides:Landroidx/collection/ArrayMap;

    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    move-object v13, v0

    move-object v14, v4

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v13, v0

    move-object v14, v5

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v13, v0

    move-object v14, v6

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    move-object v13, v0

    move-object v14, v7

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    move-object v13, v0

    move-object v14, v8

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$outFragment:Landroidx/fragment/app/Fragment;

    move-object v13, v0

    move v14, v9

    iput-boolean v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    move-object v13, v0

    move-object v14, v10

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    move-object v13, v0

    move-object v14, v11

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    move-object v13, v0

    move-object v14, v12

    iput-object v14, v13, Landroidx/fragment/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 739
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$4;->val$nameOverrides:Landroidx/collection/ArrayMap;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransition$4;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v3

    move-object v1, v3

    .line 742
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 743
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 744
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 747
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$4;->val$outFragment:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    move-object v6, v1

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 749
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 750
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 754
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$4;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 756
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 757
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 761
    :cond_1
    return-void
.end method
