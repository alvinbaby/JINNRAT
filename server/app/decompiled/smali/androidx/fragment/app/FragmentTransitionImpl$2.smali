.class Landroidx/fragment/app/FragmentTransitionImpl$2;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/fragment/app/FragmentTransitionImpl$2;->this$0:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$nameOverrides:Ljava/util/Map;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 240
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v6

    .line 241
    const/4 v6, 0x0

    move v2, v6

    :goto_0
    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 242
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v3, v6

    .line 243
    move-object v6, v3

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 244
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 245
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$nameOverrides:Ljava/util/Map;

    move-object v7, v4

    invoke-static {v6, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 246
    move-object v6, v3

    move-object v7, v5

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 241
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return-void
.end method
