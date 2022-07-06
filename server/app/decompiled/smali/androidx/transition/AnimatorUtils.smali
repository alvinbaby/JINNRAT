.class Landroidx/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2
    .param p0, "animator"    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method static pause(Landroid/animation/Animator;)V
    .locals 6
    .param p0, "animator"    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    .line 50
    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 41
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_0

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 44
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v4, v1, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_2

    .line 45
    check-cast v1, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationPause(Landroid/animation/Animator;)V

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static resume(Landroid/animation/Animator;)V
    .locals 6
    .param p0, "animator"    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    .line 66
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 57
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_0

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 60
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v4, v1, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_2

    .line 61
    check-cast v1, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationResume(Landroid/animation/Animator;)V

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
