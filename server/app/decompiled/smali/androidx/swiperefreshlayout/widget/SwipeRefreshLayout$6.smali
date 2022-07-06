.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 4

    .prologue
    .line 1336
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    .prologue
    .line 1340
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v6, :cond_0

    .line 1341
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    move v3, v6

    .line 1345
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v8, v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    move v4, v6

    .line 1346
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v7, v7, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v7}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    move v5, v6

    .line 1347
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1348
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v1

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 1349
    return-void

    .line 1343
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v6, v6, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move v3, v6

    goto :goto_0
.end method
