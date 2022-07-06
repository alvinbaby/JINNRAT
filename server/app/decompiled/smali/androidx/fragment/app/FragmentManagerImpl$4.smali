.class Landroidx/fragment/app/FragmentManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$viewToAnimate:Landroid/view/View;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .prologue
    .line 1117
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$4;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1120
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    move-object v2, v3

    .line 1121
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1122
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$4;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_0

    .line 1123
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$4;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1125
    :cond_0
    return-void
.end method
