.class Landroidx/activity/result/IntentSenderRequest$1;
.super Ljava/lang/Object;
.source "IntentSenderRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/IntentSenderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroidx/activity/result/IntentSenderRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/IntentSenderRequest;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroidx/activity/result/IntentSenderRequest;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/os/Parcel;)V

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/activity/result/IntentSenderRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/IntentSenderRequest;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public newArray(I)[Landroidx/activity/result/IntentSenderRequest;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move v2, v1

    new-array v2, v2, [Landroidx/activity/result/IntentSenderRequest;

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/activity/result/IntentSenderRequest$1;->newArray(I)[Landroidx/activity/result/IntentSenderRequest;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
