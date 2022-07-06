.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field mOverScroller:Landroid/widget/OverScroller;

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1, "this$0"    # Landroidx/recyclerview/widget/RecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 5420
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5412
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5415
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5418
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5421
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 5422
    return-void
.end method

.method private computeScrollDuration(II)I
    .locals 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 5658
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5659
    .local v1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5660
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v5, 0x1

    .line 5661
    .local v5, "horizontal":Z
    :goto_0
    if-eqz v5, :cond_1

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 5663
    .local v3, "containerSize":I
    :goto_1
    if-eqz v5, :cond_2

    .end local v1    # "absDx":I
    :goto_2
    int-to-float v0, v1

    .line 5664
    .local v0, "absDelta":F
    int-to-float v6, v3

    div-float v6, v0, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 5666
    .local v4, "duration":I
    const/16 v6, 0x7d0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    .line 5660
    .end local v0    # "absDelta":F
    .end local v3    # "containerSize":I
    .end local v4    # "duration":I
    .end local v5    # "horizontal":Z
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 5661
    .restart local v5    # "horizontal":Z
    :cond_1
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .restart local v3    # "containerSize":I
    :cond_2
    move v1, v2

    .line 5663
    goto :goto_2
.end method

.method private internalPostOnAnimation()V
    .locals 1

    .prologue
    .line 5585
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5586
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5587
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 5590
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5591
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5595
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v2, :cond_0

    .line 5596
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5597
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 5599
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5601
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5602
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 5577
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 5578
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5582
    :goto_0
    return-void

    .line 5580
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_0
.end method

.method public run()V
    .locals 27

    .prologue
    .line 5426
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 5427
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 5574
    :goto_0
    return-void

    .line 5431
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5432
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    move-object/from16 v17, v0

    .line 5447
    .local v17, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5448
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v25

    .line 5449
    .local v25, "x":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v26

    .line 5450
    .local v26, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v3, v25, v2

    .line 5451
    .local v3, "unconsumedX":I
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v4, v26, v2

    .line 5452
    .local v4, "unconsumedY":I
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5453
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 5454
    const/4 v14, 0x0

    .line 5455
    .local v14, "consumedX":I
    const/4 v15, 0x0

    .line 5458
    .local v15, "consumedY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 5459
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 5460
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    sub-int/2addr v3, v2

    .line 5463
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int/2addr v4, v2

    .line 5468
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 5469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5473
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_19

    .line 5474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 5475
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 5476
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    aget v6, v2, v5

    .line 5478
    .end local v14    # "consumedX":I
    .local v6, "consumedX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    aget v7, v2, v5

    .line 5479
    .end local v15    # "consumedY":I
    .local v7, "consumedY":I
    sub-int/2addr v3, v6

    .line 5480
    sub-int/2addr v4, v7

    .line 5484
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object/from16 v20, v0

    .line 5485
    .local v20, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5486
    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5487
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    .line 5488
    .local v13, "adapterSize":I
    if-nez v13, :cond_d

    .line 5489
    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5499
    .end local v13    # "adapterSize":I
    .end local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5504
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 5505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 5506
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 5508
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    sub-int/2addr v3, v2

    .line 5509
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int/2addr v4, v2

    .line 5511
    if-nez v6, :cond_5

    if-eqz v7, :cond_6

    .line 5512
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5515
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5524
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v2, v5, :cond_f

    const/16 v18, 0x1

    .line 5525
    .local v18, "scrollerFinishedX":Z
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    if-ne v2, v5, :cond_10

    const/16 v19, 0x1

    .line 5526
    .local v19, "scrollerFinishedY":Z
    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v18, :cond_8

    if-eqz v3, :cond_11

    :cond_8
    if-nez v19, :cond_9

    if-eqz v4, :cond_11

    :cond_9
    const/16 v16, 0x1

    .line 5533
    .local v16, "doneScrolling":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object/from16 v20, v0

    .line 5534
    .restart local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-eqz v20, :cond_12

    .line 5535
    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v21, 0x1

    .line 5537
    .local v21, "smoothScrollerPending":Z
    :goto_5
    if-nez v21, :cond_17

    if-eqz v16, :cond_17

    .line 5541
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_a

    .line 5542
    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 5543
    .local v22, "vel":I
    if-gez v3, :cond_13

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v23, v0

    .line 5544
    .local v23, "velX":I
    :goto_6
    if-gez v4, :cond_15

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v24, v0

    .line 5545
    .local v24, "velY":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5548
    .end local v22    # "vel":I
    .end local v23    # "velX":I
    .end local v24    # "velY":I
    :cond_a
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_b

    .line 5549
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5561
    .end local v3    # "unconsumedX":I
    .end local v4    # "unconsumedY":I
    .end local v6    # "consumedX":I
    .end local v7    # "consumedY":I
    .end local v16    # "doneScrolling":Z
    .end local v18    # "scrollerFinishedX":Z
    .end local v19    # "scrollerFinishedY":Z
    .end local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .end local v21    # "smoothScrollerPending":Z
    .end local v25    # "x":I
    .end local v26    # "y":I
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-object/from16 v20, v0

    .line 5563
    .restart local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5564
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 5567
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5568
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v2, :cond_18

    .line 5569
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto/16 :goto_0

    .line 5490
    .restart local v3    # "unconsumedX":I
    .restart local v4    # "unconsumedY":I
    .restart local v6    # "consumedX":I
    .restart local v7    # "consumedY":I
    .restart local v13    # "adapterSize":I
    .restart local v25    # "x":I
    .restart local v26    # "y":I
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    if-lt v2, v13, :cond_e

    .line 5491
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5492
    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto/16 :goto_1

    .line 5494
    :cond_e
    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto/16 :goto_1

    .line 5524
    .end local v13    # "adapterSize":I
    .end local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 5525
    .restart local v18    # "scrollerFinishedX":Z
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 5526
    .restart local v19    # "scrollerFinishedY":Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 5535
    .restart local v16    # "doneScrolling":Z
    .restart local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 5543
    .restart local v21    # "smoothScrollerPending":Z
    .restart local v22    # "vel":I
    :cond_13
    if-lez v3, :cond_14

    move/from16 v23, v22

    goto :goto_6

    :cond_14
    const/16 v23, 0x0

    goto :goto_6

    .line 5544
    .restart local v23    # "velX":I
    :cond_15
    if-lez v4, :cond_16

    move/from16 v24, v22

    goto :goto_7

    :cond_16
    const/16 v24, 0x0

    goto :goto_7

    .line 5554
    .end local v22    # "vel":I
    .end local v23    # "velX":I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5555
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v2, :cond_b

    .line 5556
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v5, v6, v7}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_8

    .line 5571
    .end local v3    # "unconsumedX":I
    .end local v4    # "unconsumedY":I
    .end local v6    # "consumedX":I
    .end local v7    # "consumedY":I
    .end local v16    # "doneScrolling":Z
    .end local v18    # "scrollerFinishedX":Z
    .end local v19    # "scrollerFinishedY":Z
    .end local v21    # "smoothScrollerPending":Z
    .end local v25    # "x":I
    .end local v26    # "y":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_0

    .end local v20    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .restart local v3    # "unconsumedX":I
    .restart local v4    # "unconsumedY":I
    .restart local v14    # "consumedX":I
    .restart local v15    # "consumedY":I
    .restart local v25    # "x":I
    .restart local v26    # "y":I
    :cond_19
    move v7, v15

    .end local v15    # "consumedY":I
    .restart local v7    # "consumedY":I
    move v6, v14

    .end local v14    # "consumedX":I
    .restart local v6    # "consumedX":I
    goto/16 :goto_1
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 5620
    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 5621
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(II)I

    move-result p3

    .line 5623
    :cond_0
    if-nez p4, :cond_1

    .line 5624
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 5629
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_2

    .line 5630
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5631
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 5635
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5638
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 5645
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5648
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5649
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 5670
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5671
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5672
    return-void
.end method
