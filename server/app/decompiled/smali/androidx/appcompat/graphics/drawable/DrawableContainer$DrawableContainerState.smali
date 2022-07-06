.class abstract Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

.field mSourceRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 14

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    invoke-direct {v9}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 647
    move-object v9, v0

    const/16 v10, 0xa0

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 653
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 656
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 668
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 671
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 672
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 683
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    .line 684
    move-object v9, v0

    move-object v10, v3

    if-eqz v10, :cond_5

    move-object v10, v3

    :goto_0
    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    .line 685
    move-object v9, v0

    move-object v10, v3

    move-object v11, v1

    if-eqz v11, :cond_7

    move-object v11, v1

    iget v11, v11, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    :goto_1
    invoke-static {v10, v11}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v10

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 686
    move-object v9, v1

    if-eqz v9, :cond_b

    .line 687
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 688
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 689
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 690
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 691
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 692
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 693
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 694
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 695
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 696
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 697
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 698
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 699
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 700
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 701
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 702
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 703
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 704
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 705
    move-object v9, v1

    iget v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-ne v9, v10, :cond_1

    .line 706
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v9, :cond_0

    .line 707
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    iget-object v12, v12, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 708
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 710
    :cond_0
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-eqz v9, :cond_1

    .line 711
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 712
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 713
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 714
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 715
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 718
    :cond_1
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v9, :cond_2

    .line 719
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 720
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 722
    :cond_2
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v9, :cond_3

    .line 723
    move-object v9, v0

    move-object v10, v1

    iget-boolean v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 724
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 728
    :cond_3
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v4, v9

    .line 729
    move-object v9, v0

    move-object v10, v4

    array-length v10, v10

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 730
    move-object v9, v0

    move-object v10, v1

    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 731
    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move-object v5, v9

    .line 732
    move-object v9, v5

    if-eqz v9, :cond_8

    .line 733
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 740
    :goto_2
    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v6, v9

    .line 741
    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_a

    .line 742
    move-object v9, v4

    move v10, v7

    aget-object v9, v9, v10

    if-eqz v9, :cond_4

    .line 743
    move-object v9, v4

    move v10, v7

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    move-object v8, v9

    .line 744
    move-object v9, v8

    if-eqz v9, :cond_9

    .line 745
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v10, v7

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 684
    :cond_5
    move-object v10, v1

    if-eqz v10, :cond_6

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 685
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 735
    :cond_8
    move-object v9, v0

    new-instance v10, Landroid/util/SparseArray;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget v12, v12, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    invoke-direct {v11, v12}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_2

    .line 747
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v10, v7

    move-object v11, v4

    move v12, v7

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    goto :goto_4

    .line 755
    :cond_a
    :goto_5
    return-void

    .line 752
    :cond_b
    move-object v9, v0

    const/16 v10, 0xa

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 753
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    goto :goto_5
.end method

.method private createAllFutures()V
    .locals 10

    .prologue
    .line 800
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v5, :cond_1

    .line 801
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v1, v5

    .line 802
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 803
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 804
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v4, v5

    .line 805
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v6, v3

    move-object v7, v0

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 809
    :cond_1
    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 812
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 813
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v2

    .line 815
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 816
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 817
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 8

    .prologue
    .line 769
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v2, v3

    .line 770
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 771
    move-object v3, v0

    move v4, v2

    move v5, v2

    const/16 v6, 0xa

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 773
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 774
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 775
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 776
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v4, v2

    move-object v5, v1

    aput-object v5, v3, v4

    .line 777
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 778
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 779
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 780
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 781
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 782
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 783
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 784
    move v3, v2

    move v0, v3

    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 893
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_2

    .line 894
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 895
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v2, v5

    .line 896
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v3, v5

    .line 897
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 898
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 899
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 901
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 897
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 904
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 906
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 911
    move-object v0, p0

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v1, v6

    .line 912
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v2, v6

    .line 913
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_2

    .line 914
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 915
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 916
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 917
    const/4 v6, 0x1

    move v0, v6

    .line 926
    :goto_1
    return v0

    .line 920
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v5, v6

    .line 921
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 922
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 913
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 926
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public declared-synchronized canConstantState()Z
    .locals 7

    .prologue
    .line 1132
    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-eqz v4, :cond_0

    .line 1133
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1146
    :goto_0
    monitor-exit v6

    return v0

    .line 1135
    :cond_0
    move-object v4, v0

    :try_start_1
    invoke-direct {v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1136
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 1137
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v1, v4

    .line 1138
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v2, v4

    .line 1139
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1140
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1141
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 1142
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1139
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1145
    :cond_2
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1132
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method final clearMutated()V
    .locals 3

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 951
    return-void
.end method

.method protected computeConstantSize()V
    .locals 12

    .prologue
    .line 1042
    move-object v0, p0

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 1043
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1044
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v1, v6

    .line 1045
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v2, v6

    .line 1046
    move-object v6, v0

    move-object v7, v0

    const/4 v8, -0x1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 1047
    move-object v6, v0

    move-object v7, v0

    const/4 v8, 0x0

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 1048
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_4

    .line 1049
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 1050
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move v5, v6

    .line 1051
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v6, v7, :cond_0

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 1052
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move v5, v6

    .line 1053
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v6, v7, :cond_1

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 1054
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    move v5, v6

    .line 1055
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v6, v7, :cond_2

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 1056
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    move v5, v6

    .line 1057
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v6, v7, :cond_3

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 1048
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1059
    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 2

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 759
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 828
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v7, v1

    aget-object v6, v6, v7

    move-object v2, v6

    .line 829
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 830
    move-object v6, v2

    move-object v0, v6

    .line 846
    :goto_0
    return-object v0

    .line 833
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    .line 834
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    move v3, v6

    .line 835
    move v6, v3

    if-ltz v6, :cond_2

    .line 836
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v4, v6

    .line 837
    move-object v6, v0

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 838
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move v7, v1

    move-object v8, v5

    aput-object v8, v6, v7

    .line 839
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 840
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 841
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 843
    :cond_1
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 846
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 2

    .prologue
    .line 821
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v0, v1

    return v0
.end method

.method public final getConstantHeight()I
    .locals 2

    .prologue
    .line 1015
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v1, :cond_0

    .line 1016
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1018
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    move v0, v1

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 2

    .prologue
    .line 1035
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v1, :cond_0

    .line 1036
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1038
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    move v0, v1

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 2

    .prologue
    .line 1025
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v1, :cond_0

    .line 1026
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1028
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    move v0, v1

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 14

    .prologue
    .line 966
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v6, :cond_0

    .line 967
    const/4 v6, 0x0

    move-object v0, v6

    .line 987
    :goto_0
    return-object v0

    .line 969
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v6, :cond_2

    .line 970
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    move-object v0, v6

    goto :goto_0

    .line 972
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 973
    const/4 v6, 0x0

    move-object v1, v6

    .line 974
    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v6

    .line 975
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v3, v6

    .line 976
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v4, v6

    .line 977
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_8

    .line 978
    move-object v6, v4

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 979
    move-object v6, v1

    if-nez v6, :cond_3

    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v6

    .line 980
    :cond_3
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_4

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 981
    :cond_4
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_5

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 982
    :cond_5
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_6

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 983
    :cond_6
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_7

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 977
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 986
    :cond_8
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 987
    move-object v6, v0

    move-object v7, v1

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    iput-object v8, v7, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public final getConstantWidth()I
    .locals 2

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v1, :cond_0

    .line 1006
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1008
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    move v0, v1

    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 2

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    move v0, v1

    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 2

    .prologue
    .line 1074
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    move v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 8

    .prologue
    .line 1082
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v5, :cond_0

    .line 1083
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    move v0, v5

    .line 1094
    :goto_0
    return v0

    .line 1085
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1086
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v1, v5

    .line 1087
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v2, v5

    .line 1088
    move v5, v1

    if-lez v5, :cond_1

    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    :goto_1
    move v3, v5

    .line 1089
    const/4 v5, 0x1

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_2

    .line 1090
    move v5, v3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    move v3, v5

    .line 1089
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1088
    :cond_1
    const/4 v5, -0x2

    goto :goto_1

    .line 1092
    :cond_2
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 1093
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 1094
    move v5, v3

    move v0, v5

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 9

    .prologue
    .line 1123
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 1124
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1126
    return-void
.end method

.method invalidateCache()V
    .locals 3

    .prologue
    .line 791
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 792
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 793
    return-void
.end method

.method public final isConstantSize()Z
    .locals 2

    .prologue
    .line 998
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    move v0, v1

    return v0
.end method

.method public final isStateful()Z
    .locals 7

    .prologue
    .line 1101
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v5, :cond_0

    .line 1102
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    move v0, v5

    .line 1116
    :goto_0
    return v0

    .line 1104
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1105
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v1, v5

    .line 1106
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v2, v5

    .line 1107
    const/4 v5, 0x0

    move v3, v5

    .line 1108
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 1109
    move-object v5, v2

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1110
    const/4 v5, 0x1

    move v3, v5

    .line 1114
    :cond_1
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 1115
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 1116
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 1108
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method mutate()V
    .locals 6

    .prologue
    .line 932
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v1, v4

    .line 933
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v2, v4

    .line 934
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 935
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 936
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 934
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 939
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 940
    return-void
.end method

.method public final setConstantSize(Z)V
    .locals 4

    .prologue
    .line 991
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 992
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 4

    .prologue
    .line 1062
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 1063
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 4

    .prologue
    .line 1070
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 1071
    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 10

    .prologue
    .line 850
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v8, 0x0

    move v3, v8

    .line 853
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    move v4, v8

    .line 854
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v5, v8

    .line 855
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_2

    .line 856
    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    if-eqz v8, :cond_1

    .line 857
    const/4 v8, 0x0

    move v7, v8

    .line 858
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_0

    .line 859
    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v8

    move v7, v8

    .line 861
    :cond_0
    move v8, v6

    move v9, v2

    if-ne v8, v9, :cond_1

    .line 862
    move v8, v7

    move v3, v8

    .line 855
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 866
    :cond_2
    move-object v8, v0

    move v9, v1

    iput v9, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 867
    move v8, v3

    move v0, v8

    return v0
.end method

.method public final setVariablePadding(Z)V
    .locals 4

    .prologue
    .line 959
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 960
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    .line 877
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 878
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    .line 881
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    invoke-static {v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v4

    move v2, v4

    .line 882
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    move v3, v4

    .line 883
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 884
    move v4, v3

    move v5, v2

    if-eq v4, v5, :cond_0

    .line 885
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 886
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 889
    :cond_0
    return-void
.end method
