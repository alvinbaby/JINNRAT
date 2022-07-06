.class Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Landroidx/activity/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field private mCurrentCancellable:Landroidx/activity/Cancellable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field final synthetic this$0:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V
    .locals 6
    .param p1    # Landroidx/activity/OnBackPressedDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 224
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 225
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 226
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 227
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 247
    move-object v1, v0

    iget-object v1, v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->removeCancellable(Landroidx/activity/Cancellable;)V

    .line 248
    move-object v1, v0

    iget-object v1, v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Landroidx/activity/Cancellable;

    if-eqz v1, :cond_0

    .line 249
    move-object v1, v0

    iget-object v1, v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Landroidx/activity/Cancellable;

    invoke-interface {v1}, Landroidx/activity/Cancellable;->cancel()V

    .line 250
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Landroidx/activity/Cancellable;

    .line 252
    :cond_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v3, v4, :cond_1

    .line 233
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    move-object v5, v0

    iget-object v5, v5, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v4, v5}, Landroidx/activity/OnBackPressedDispatcher;->addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;

    move-result-object v4

    iput-object v4, v3, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Landroidx/activity/Cancellable;

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    move-object v3, v2

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v3, v4, :cond_2

    .line 236
    move-object v3, v0

    iget-object v3, v3, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Landroidx/activity/Cancellable;

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v0

    iget-object v3, v3, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Landroidx/activity/Cancellable;

    invoke-interface {v3}, Landroidx/activity/Cancellable;->cancel()V

    goto :goto_0

    .line 239
    :cond_2
    move-object v3, v2

    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v3, v4, :cond_0

    .line 240
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    goto :goto_0
.end method
