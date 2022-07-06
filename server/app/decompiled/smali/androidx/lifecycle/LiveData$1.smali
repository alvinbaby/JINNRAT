.class Landroidx/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    iget-object v4, v4, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 90
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    iget-object v4, v4, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    move-object v1, v4

    .line 91
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    sget-object v5, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v5, v4, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 92
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method
