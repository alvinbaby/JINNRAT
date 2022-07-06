.class abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 444
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 447
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    .line 448
    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne v2, v3, :cond_0

    .line 470
    :goto_0
    return-void

    .line 465
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 466
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->changeActiveCounter(I)V

    .line 467
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v2, :cond_1

    .line 468
    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 470
    :cond_1
    goto :goto_0

    .line 466
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method detachObserver()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 3

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method abstract shouldBeActive()Z
.end method
