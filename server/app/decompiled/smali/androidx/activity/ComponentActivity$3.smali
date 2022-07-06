.class Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/activity/ComponentActivity$3;->this$0:Landroidx/activity/ComponentActivity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v5, v6, :cond_0

    .line 243
    move-object v5, v0

    iget-object v5, v5, Landroidx/activity/ComponentActivity$3;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {v5}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v3, v5

    .line 244
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v5

    :goto_0
    move-object v4, v5

    .line 245
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 246
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 249
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
