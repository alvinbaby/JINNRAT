.class public final Landroidx/activity/result/IntentSenderRequest;
.super Ljava/lang/Object;
.source "IntentSenderRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/IntentSenderRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFillInIntent:Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFlagsMask:I

.field private final mFlagsValues:I

.field private final mIntentSender:Landroid/content/IntentSender;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroidx/activity/result/IntentSenderRequest$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/activity/result/IntentSenderRequest$1;-><init>()V

    sput-object v0, Landroidx/activity/result/IntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
    .locals 7
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    .line 79
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    .line 80
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    .line 81
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 125
    move-object v2, v0

    move-object v3, v1

    const-class v4, Landroid/content/IntentSender;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    iput-object v3, v2, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    .line 126
    move-object v2, v0

    move-object v3, v1

    const-class v4, Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, v2, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    .line 127
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    .line 128
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    .line 129
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getFillInIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    move-object v0, v1

    return-object v0
.end method

.method public getFlagsMask()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    move v0, v1

    return v0
.end method

.method public getFlagsValues()I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    move v0, v1

    return v0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    move-object v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
