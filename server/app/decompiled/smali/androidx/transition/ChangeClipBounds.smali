.class public Landroidx/transition/ChangeClipBounds;
.super Landroidx/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:clipBounds:clip"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 62
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 67
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-nez v1, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 82
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 77
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 89
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v8, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:clipBounds:clip"

    .line 90
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:clipBounds:clip"

    .line 91
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    iget-object v8, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:clipBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 95
    .local v5, "start":Landroid/graphics/Rect;
    iget-object v8, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:clipBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 96
    .local v1, "end":Landroid/graphics/Rect;
    if-nez v1, :cond_4

    move v2, v6

    .line 97
    .local v2, "endIsNull":Z
    :goto_1
    if-nez v5, :cond_2

    if-eqz v1, :cond_0

    .line 101
    :cond_2
    if-nez v5, :cond_5

    .line 102
    iget-object v8, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:clipBounds:bounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "start":Landroid/graphics/Rect;
    check-cast v5, Landroid/graphics/Rect;

    .line 106
    .restart local v5    # "start":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    iget-object v8, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v8, v5}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 111
    new-instance v4, Landroidx/transition/RectEvaluator;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v4, v8}, Landroidx/transition/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 112
    .local v4, "evaluator":Landroidx/transition/RectEvaluator;
    iget-object v8, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v9, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/Rect;

    aput-object v5, v10, v7

    aput-object v1, v10, v6

    invoke-static {v8, v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 114
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_0

    .line 115
    iget-object v3, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 116
    .local v3, "endView":Landroid/view/View;
    new-instance v6, Landroidx/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v3}, Landroidx/transition/ChangeClipBounds$1;-><init>(Landroidx/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "endIsNull":Z
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "evaluator":Landroidx/transition/RectEvaluator;
    :cond_4
    move v2, v7

    .line 96
    goto :goto_1

    .line 103
    .restart local v2    # "endIsNull":Z
    :cond_5
    if-nez v1, :cond_3

    .line 104
    iget-object v8, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:clipBounds:bounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "end":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .restart local v1    # "end":Landroid/graphics/Rect;
    goto :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    sget-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
