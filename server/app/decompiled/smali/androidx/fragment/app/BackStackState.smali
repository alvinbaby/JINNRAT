.class final Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mCurrentMaxLifecycleStates:[I

.field final mFragmentWhos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOldMaxLifecycleStates:[I

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroidx/fragment/app/BackStackState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/fragment/app/BackStackState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mOps:[I

    .line 85
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 86
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    .line 87
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    .line 88
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mTransition:I

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    .line 90
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mIndex:I

    .line 92
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 93
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 95
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 98
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/fragment/app/BackStackRecord;)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v6

    .line 49
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x5

    mul-int/lit8 v7, v7, 0x5

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    .line 51
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v6, :cond_0

    .line 52
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Not on back stack"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 55
    :cond_0
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v2

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 56
    move-object v6, v0

    move v7, v2

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    .line 57
    move-object v6, v0

    move v7, v2

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    .line 58
    const/4 v6, 0x0

    move v3, v6

    .line 59
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 60
    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransaction$Op;

    move-object v5, v6

    .line 61
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aput v8, v6, v7

    .line 62
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_1

    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 63
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    aput v8, v6, v7

    .line 64
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    aput v8, v6, v7

    .line 65
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    aput v8, v6, v7

    .line 66
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    aput v8, v6, v7

    .line 67
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    move v7, v4

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v8}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v8

    aput v8, v6, v7

    .line 68
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    move v7, v4

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v8}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v8

    aput v8, v6, v7

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 70
    :cond_2
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mTransition:I

    .line 71
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    .line 72
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    .line 73
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mIndex:I

    .line 74
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 75
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 76
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 77
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 78
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 79
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 80
    move-object v6, v0

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v7, v6, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;
    .locals 13

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    new-instance v8, Landroidx/fragment/app/BackStackRecord;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    move-object v2, v8

    .line 103
    const/4 v8, 0x0

    move v3, v8

    .line 104
    const/4 v8, 0x0

    move v4, v8

    .line 105
    :goto_0
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 106
    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>()V

    move-object v5, v8

    .line 107
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 108
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " op #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " base fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v11, v3

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 110
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 111
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 112
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    move-object v7, v8

    .line 113
    move-object v8, v5

    move-object v9, v7

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 117
    :goto_1
    move-object v8, v5

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    move v11, v4

    aget v10, v10, v11

    aget-object v9, v9, v10

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 118
    move-object v8, v5

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    move v11, v4

    aget v10, v10, v11

    aget-object v9, v9, v10

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 119
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 120
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 121
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 122
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 123
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 124
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 125
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 126
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 127
    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/FragmentTransaction$Op;)V

    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto/16 :goto_0

    .line 115
    :cond_1
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 130
    :cond_2
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mTransition:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 131
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    .line 132
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 133
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mIndex:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 134
    move-object v8, v2

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 135
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 136
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 137
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 138
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 139
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 140
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 141
    move-object v8, v2

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v9, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 142
    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 143
    move-object v8, v2

    move-object v0, v8

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mOldMaxLifecycleStates:[I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mCurrentMaxLifecycleStates:[I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 163
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 165
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
