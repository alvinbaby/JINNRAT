.class public Landroidx/lifecycle/ViewTreeViewModelStoreOwner;
.super Ljava/lang/Object;
.source "ViewTreeViewModelStoreOwner.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v4, v0

    sget v5, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/ViewModelStoreOwner;

    move-object v1, v4

    .line 65
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v0, v4

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 67
    :goto_1
    move-object v4, v1

    if-nez v4, :cond_1

    move-object v4, v2

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 68
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 69
    move-object v4, v3

    sget v5, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/ViewModelStoreOwner;

    move-object v1, v4

    .line 70
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public static set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/ViewModelStoreOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    sget v3, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    return-void
.end method
