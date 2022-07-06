.class Landroidx/fragment/app/FragmentTransitionCompat21$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/FragmentTransitionCompat21$4;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-direct {v3}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    move-object v0, v2

    goto :goto_0
.end method
