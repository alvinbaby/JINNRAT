.class final Landroidx/fragment/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

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
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field mInstance:Landroidx/fragment/app/Fragment;

.field final mMaxLifecycleState:I

.field final mRemoving:Z

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/fragment/app/FragmentState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 65
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 67
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mContainerId:I

    .line 68
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 69
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    .line 71
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mDetached:Z

    .line 72
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 73
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mHidden:Z

    .line 74
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 75
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    .line 76
    return-void

    .line 65
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 69
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 70
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 71
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 73
    :cond_4
    const/4 v3, 0x0

    goto :goto_4
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 49
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    .line 50
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 51
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 52
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mContainerId:I

    .line 53
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 54
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 55
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    .line 56
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mDetached:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mDetached:Z

    .line 57
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 58
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mHidden:Z

    .line 59
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public instantiate(Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 8
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_1

    .line 81
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 82
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 86
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 89
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 97
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 98
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 99
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 100
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    iput v4, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 101
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mContainerId:I

    iput v4, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 102
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 103
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 104
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 105
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mDetached:Z

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 106
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mHidden:Z

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 107
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    aget-object v4, v4, v5

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 109
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 110
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instantiated fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 113
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v0, v3

    return-object v0

    .line 95
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 120
    move-object v2, v1

    const-string v3, "FragmentState{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    move-object v2, v1

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    move-object v2, v1

    const-string v3, ")}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v1

    const-string v3, " fromLayout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/FragmentState;->mContainerId:I

    if-eqz v2, :cond_1

    .line 129
    move-object v2, v1

    const-string v3, " id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    move-object v2, v1

    const-string v3, " tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    if-eqz v2, :cond_3

    .line 137
    move-object v2, v1

    const-string v3, " retainInstance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    if-eqz v2, :cond_4

    .line 140
    move-object v2, v1

    const-string v3, " removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    :cond_4
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentState;->mDetached:Z

    if-eqz v2, :cond_5

    .line 143
    move-object v2, v1

    const-string v3, " detached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    :cond_5
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentState;->mHidden:Z

    if-eqz v2, :cond_6

    .line 146
    move-object v2, v1

    const-string v3, " hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    :cond_6
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mRemoving:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mDetached:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 168
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mHidden:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 170
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mMaxLifecycleState:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void

    .line 160
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 164
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 165
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 166
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 168
    :cond_4
    const/4 v4, 0x0

    goto :goto_4
.end method
