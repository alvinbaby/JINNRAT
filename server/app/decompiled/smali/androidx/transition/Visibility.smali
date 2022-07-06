.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v2, 0x3

    iput v2, p0, Landroidx/transition/Visibility;->mMode:I

    .line 107
    sget-object v2, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string v2, "transitionVisibilityMode"

    invoke-static {v0, p2, v2, v3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 112
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->setMode(I)V

    .line 116
    :cond_0
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .prologue
    .line 150
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 151
    .local v1, "visibility":I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    iget-object v4, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 154
    .local v0, "loc":[I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 195
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 196
    .local v0, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 197
    iput-boolean v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 198
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 200
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 205
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 207
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 212
    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 213
    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_3

    .line 243
    :cond_0
    :goto_2
    return-object v0

    .line 202
    :cond_1
    iput v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 203
    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 209
    :cond_2
    iput v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 210
    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 217
    :cond_3
    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v1, v2, :cond_5

    .line 218
    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v1, :cond_4

    .line 219
    iput-boolean v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 220
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 221
    :cond_4
    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_0

    .line 222
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 223
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 227
    :cond_5
    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 228
    iput-boolean v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 229
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 230
    :cond_6
    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 231
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 232
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 236
    :cond_7
    if-nez p1, :cond_8

    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_8

    .line 237
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 238
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 239
    :cond_8
    if-nez p2, :cond_0

    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v1, :cond_0

    .line 240
    iput-boolean v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 241
    iput-boolean v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 166
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 161
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
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
    .line 250
    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .line 251
    .local v6, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, v6, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    iget-boolean v0, v6, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v0, :cond_1

    .line 254
    iget v3, v6, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v6, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_1
    iget v3, v6, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v6, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 5
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newValues"    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 512
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v1

    .line 515
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 516
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    .line 517
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 522
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 523
    .local v0, "changeInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_3

    iget v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 184
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return v3

    .line 187
    :cond_0
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "visibility":I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 190
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 284
    iget v5, p0, Landroidx/transition/Visibility;->mMode:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    if-nez p4, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object v4

    .line 287
    :cond_1
    if-nez p2, :cond_2

    .line 288
    iget-object v5, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 289
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v7}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v3

    .line 291
    .local v3, "startParentValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p0, v0, v7}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    .line 293
    .local v1, "endParentValues":Landroidx/transition/TransitionValues;
    invoke-direct {p0, v3, v1}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v2

    .line 294
    .local v2, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v2, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v5, :cond_0

    .line 298
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroidx/transition/TransitionValues;
    .end local v2    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    .end local v3    # "startParentValues":Landroidx/transition/TransitionValues;
    :cond_2
    iget-object v4, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v4, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 28
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/transition/Visibility;->mMode:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 344
    const/4 v5, 0x0

    .line 484
    :cond_0
    :goto_0
    return-object v5

    .line 347
    :cond_1
    if-nez p2, :cond_2

    .line 349
    const/4 v5, 0x0

    goto :goto_0

    .line 352
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v24, v0

    .line 353
    .local v24, "startView":Landroid/view/View;
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 354
    .local v8, "endView":Landroid/view/View;
    :goto_1
    const/4 v15, 0x0

    .line 355
    .local v15, "overlayView":Landroid/view/View;
    const/16 v25, 0x0

    .line 356
    .local v25, "viewToKeep":Landroid/view/View;
    const/16 v17, 0x0

    .line 358
    .local v17, "reusingOverlayView":Z
    sget v26, Landroidx/transition/R$id;->save_overlay_view:I

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 359
    .local v18, "savedOverlayView":Landroid/view/View;
    if-eqz v18, :cond_6

    .line 363
    move-object/from16 v15, v18

    .line 364
    const/16 v17, 0x1

    .line 422
    :cond_3
    :goto_2
    if-eqz v15, :cond_f

    .line 423
    if-nez v17, :cond_4

    .line 424
    move-object/from16 v0, p2

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v27, "android:visibility:screenLocation"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    .line 425
    .local v19, "screenLoc":[I
    const/16 v26, 0x0

    aget v20, v19, v26

    .line 426
    .local v20, "screenX":I
    const/16 v26, 0x1

    aget v21, v19, v26

    .line 427
    .local v21, "screenY":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v11, v0, [I

    .line 428
    .local v11, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 429
    const/16 v26, 0x0

    aget v26, v11, v26

    sub-int v26, v20, v26

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 430
    const/16 v26, 0x1

    aget v26, v11, v26

    sub-int v26, v21, v26

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 431
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 433
    .end local v11    # "loc":[I
    .end local v19    # "screenLoc":[I
    .end local v20    # "screenX":I
    .end local v21    # "screenY":I
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 434
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v17, :cond_0

    .line 435
    if-nez v5, :cond_e

    .line 436
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto/16 :goto_0

    .line 353
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v8    # "endView":Landroid/view/View;
    .end local v15    # "overlayView":Landroid/view/View;
    .end local v17    # "reusingOverlayView":Z
    .end local v18    # "savedOverlayView":Landroid/view/View;
    .end local v25    # "viewToKeep":Landroid/view/View;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 366
    .restart local v8    # "endView":Landroid/view/View;
    .restart local v15    # "overlayView":Landroid/view/View;
    .restart local v17    # "reusingOverlayView":Z
    .restart local v18    # "savedOverlayView":Landroid/view/View;
    .restart local v25    # "viewToKeep":Landroid/view/View;
    :cond_6
    const/4 v12, 0x0

    .line 368
    .local v12, "needOverlayForStartView":Z
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-nez v26, :cond_9

    .line 369
    :cond_7
    if-eqz v8, :cond_8

    .line 371
    move-object v15, v8

    .line 389
    :goto_3
    if-eqz v12, :cond_3

    .line 393
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-nez v26, :cond_c

    .line 395
    move-object/from16 v15, v24

    goto/16 :goto_2

    .line 373
    :cond_8
    const/4 v12, 0x1

    goto :goto_3

    .line 377
    :cond_9
    const/16 v26, 0x4

    move/from16 v0, p5

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 378
    move-object/from16 v25, v8

    goto :goto_3

    .line 381
    :cond_a
    move-object/from16 v0, v24

    if-ne v0, v8, :cond_b

    .line 382
    move-object/from16 v25, v8

    goto :goto_3

    .line 384
    :cond_b
    const/4 v12, 0x1

    goto :goto_3

    .line 396
    :cond_c
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/View;

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 397
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    .line 398
    .local v22, "startParent":Landroid/view/View;
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v23

    .line 399
    .local v23, "startParentValues":Landroidx/transition/TransitionValues;
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v7

    .line 402
    .local v7, "endParentValues":Landroidx/transition/TransitionValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v16

    .line 403
    .local v16, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 404
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_2

    .line 407
    :cond_d
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v10

    .line 408
    .local v10, "id":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-nez v26, :cond_3

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v10, v0, :cond_3

    .line 409
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 413
    move-object/from16 v15, v24

    goto/16 :goto_2

    .line 438
    .end local v7    # "endParentValues":Landroidx/transition/TransitionValues;
    .end local v10    # "id":I
    .end local v12    # "needOverlayForStartView":Z
    .end local v16    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    .end local v22    # "startParent":Landroid/view/View;
    .end local v23    # "startParentValues":Landroidx/transition/TransitionValues;
    .restart local v5    # "animator":Landroid/animation/Animator;
    :cond_e
    sget v26, Landroidx/transition/R$id;->save_overlay_view:I

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 439
    move-object v9, v15

    .line 440
    .local v9, "finalOverlayView":Landroid/view/View;
    move-object/from16 v14, p1

    .line 441
    .local v14, "overlayHost":Landroid/view/ViewGroup;
    new-instance v26, Landroidx/transition/Visibility$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v9, v2}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto/16 :goto_0

    .line 469
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v14    # "overlayHost":Landroid/view/ViewGroup;
    :cond_f
    if-eqz v25, :cond_11

    .line 470
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 471
    .local v13, "originalVisibility":I
    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 473
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_10

    .line 474
    new-instance v6, Landroidx/transition/Visibility$DisappearListener;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, p5

    move/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 476
    .local v6, "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    invoke-static {v5, v6}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 478
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto/16 :goto_0

    .line 480
    .end local v6    # "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    :cond_10
    move-object/from16 v0, v25

    invoke-static {v0, v13}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 484
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "originalVisibility":I
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 126
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    .line 130
    return-void
.end method
