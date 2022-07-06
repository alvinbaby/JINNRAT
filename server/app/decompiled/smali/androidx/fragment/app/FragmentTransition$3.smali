.class final Landroidx/fragment/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Landroidx/collection/ArrayMap;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    .line 624
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$inFragment:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    move v9, v3

    iput-boolean v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$inSharedElements:Landroidx/collection/ArrayMap;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 627
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentTransition$3;->val$inFragment:Landroidx/fragment/app/Fragment;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransition$3;->val$inSharedElements:Landroidx/collection/ArrayMap;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 629
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 630
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentTransition$3;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 632
    :cond_0
    return-void
.end method
