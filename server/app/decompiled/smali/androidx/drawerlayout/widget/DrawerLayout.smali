.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroidx/customview/widget/Openable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;,
        Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.drawerlayout.widget.DrawerLayout"

.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f

.field private static sEdgeSizeUsingSystemGestureInsets:Z


# instance fields
.field private final mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private final mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 256
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/drawerlayout/R$attr;->drawerLayoutStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 336
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    move-object v9, v0

    new-instance v10, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 210
    move-object v9, v0

    const/high16 v10, -0x67000000

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 212
    move-object v9, v0

    new-instance v10, Landroid/graphics/Paint;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 220
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 222
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 223
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 224
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 225
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    .line 246
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 247
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 248
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 249
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 258
    move-object v9, v0

    new-instance v10, Landroidx/drawerlayout/widget/DrawerLayout$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 337
    move-object v9, v0

    const/high16 v10, 0x40000

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 338
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    move v4, v9

    .line 339
    move-object v9, v0

    const/high16 v10, 0x42800000    # 64.0f

    move v11, v4

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 340
    const/high16 v9, 0x43c80000    # 400.0f

    move v10, v4

    mul-float/2addr v9, v10

    move v5, v9

    .line 342
    move-object v9, v0

    new-instance v10, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const/4 v13, 0x3

    invoke-direct {v11, v12, v13}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 343
    move-object v9, v0

    new-instance v10, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const/4 v13, 0x5

    invoke-direct {v11, v12, v13}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 345
    move-object v9, v0

    move-object v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v12, v0

    iget-object v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v10

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 346
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 347
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move v10, v5

    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 348
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v10, v0

    iget-object v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 350
    move-object v9, v0

    move-object v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v12, v0

    iget-object v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v10

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 351
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 352
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move v10, v5

    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 353
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    move-object v10, v0

    iget-object v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 356
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 358
    move-object v9, v0

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 361
    move-object v9, v0

    new-instance v10, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 362
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 363
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 364
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_1

    .line 365
    move-object v9, v0

    new-instance v10, Landroidx/drawerlayout/widget/DrawerLayout$2;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout$2;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 373
    move-object v9, v0

    const/16 v10, 0x500

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 375
    move-object v9, v1

    sget-object v10, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {v9, v10}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v6, v9

    .line 377
    move-object v9, v0

    move-object v10, v6

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    :cond_0
    :goto_0
    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroidx/drawerlayout/R$styleable;->DrawerLayout:[I

    move v12, v3

    const/4 v13, 0x0

    .line 387
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v6, v9

    .line 389
    move-object v9, v6

    :try_start_1
    sget v10, Landroidx/drawerlayout/R$styleable;->DrawerLayout_elevation:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 390
    move-object v9, v0

    move-object v10, v6

    sget v11, Landroidx/drawerlayout/R$styleable;->DrawerLayout_elevation:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    :goto_1
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    move-object v9, v0

    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 399
    return-void

    .line 379
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    move-object v9, v7

    throw v9

    .line 382
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 392
    :cond_2
    move-object v9, v0

    move-object v10, v0

    :try_start_2
    invoke-virtual {v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroidx/drawerlayout/R$dimen;->def_drawer_elevation:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 395
    :catchall_1
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    move-object v9, v8

    throw v9
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 806
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v4, v7

    .line 807
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_0

    .line 808
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 809
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v3, v7

    .line 810
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 818
    :goto_0
    move v7, v3

    move v0, v7

    return v0

    .line 812
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v5, v7

    .line 813
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v6, v7

    .line 814
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 815
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v3, v7

    .line 816
    move-object v7, v1

    move v8, v5

    neg-float v8, v8

    move v9, v6

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 11

    .prologue
    .line 826
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v3, v7

    .line 827
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move v4, v7

    .line 828
    move-object v7, v1

    invoke-static {v7}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object v5, v7

    .line 829
    move-object v7, v5

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 830
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v6, v7

    .line 831
    move-object v7, v6

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_1

    .line 832
    move-object v7, v0

    iget-object v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v7, :cond_0

    .line 833
    move-object v7, v0

    new-instance v8, Landroid/graphics/Matrix;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    .line 835
    :cond_0
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 836
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 838
    :cond_1
    move-object v7, v5

    move-object v0, v7

    return-object v0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1046
    move v0, p0

    move v1, v0

    const/4 v2, 0x3

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1047
    const-string v1, "LEFT"

    move-object v0, v1

    .line 1052
    :goto_0
    return-object v0

    .line 1049
    :cond_0
    move v1, v0

    const/4 v2, 0x5

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1050
    const-string v1, "RIGHT"

    move-object v0, v1

    goto :goto_0

    .line 1052
    :cond_1
    move v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1377
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1378
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1379
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1381
    :goto_1
    return v0

    .line 1379
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1381
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private hasPeekingDrawer()Z
    .locals 6

    .prologue
    .line 1950
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1951
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1952
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1953
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_0

    .line 1954
    const/4 v4, 0x1

    move v0, v4

    .line 1957
    :goto_1
    return v0

    .line 1951
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1957
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 2

    .prologue
    .line 2020
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2160
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 2162
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 2160
    :goto_0
    move v0, v1

    return v0

    .line 2162
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .locals 8

    .prologue
    .line 793
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 794
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    .line 796
    :cond_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 797
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    move v5, v1

    float-to-int v5, v5

    move v6, v2

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 1243
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1244
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v3

    .line 1246
    :cond_0
    return-void
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1203
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 1205
    move v2, v1

    if-nez v2, :cond_0

    .line 1206
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1208
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    .line 1209
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1218
    :goto_0
    return-object v0

    .line 1212
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1214
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    .line 1215
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1218
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1222
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 1223
    move v2, v1

    if-nez v2, :cond_0

    .line 1224
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1226
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    .line 1227
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1236
    :goto_0
    return-object v0

    .line 1230
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1232
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    .line 1233
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1236
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 3

    .prologue
    .line 1195
    move-object v0, p0

    sget-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 1200
    :goto_0
    return-void

    .line 1198
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1199
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1200
    goto :goto_0
.end method

.method private updateChildAccessibilityAction(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 951
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 952
    move-object v2, v1

    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 954
    :cond_0
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 934
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v3, v6

    .line 935
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 936
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 937
    move v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_2

    .line 940
    :cond_1
    move-object v6, v5

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 935
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 943
    :cond_2
    move-object v6, v5

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 947
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 6
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 550
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 547
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 549
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 550
    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1986
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v9

    const/high16 v10, 0x60000

    if-ne v9, v10, :cond_0

    .line 2017
    :goto_0
    return-void

    .line 1992
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1993
    const/4 v9, 0x0

    move v5, v9

    .line 1994
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 1995
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1996
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1997
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1998
    const/4 v9, 0x1

    move v5, v9

    .line 1999
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1994
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2002
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 2006
    :cond_3
    move v9, v5

    if-nez v9, :cond_5

    .line 2007
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 2008
    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_5

    .line 2009
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 2010
    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    .line 2011
    move-object v9, v8

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2008
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2016
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2017
    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 2132
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2134
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 2135
    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2138
    :cond_0
    move-object v5, v1

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2149
    :goto_0
    sget-boolean v5, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v5, :cond_1

    .line 2150
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 2152
    :cond_1
    return-void

    .line 2143
    :cond_2
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 14

    .prologue
    .line 2036
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v6, :cond_1

    .line 2037
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 2038
    move-wide v6, v1

    move-wide v8, v1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, v6

    .line 2040
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .line 2041
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 2042
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 2041
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2044
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 2045
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 2047
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 991
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 992
    move v4, v3

    move v5, v2

    and-int/2addr v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1976
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1800
    move-object v0, p0

    move-object v1, v0

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 1801
    return-void
.end method

.method public closeDrawer(I)V
    .locals 5

    .prologue
    .line 1851
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1852
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 9

    .prologue
    .line 1862
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1863
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1864
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No drawer view found with gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    .line 1865
    invoke-static {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1867
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1868
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1809
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1810
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1819
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1820
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a sliding drawer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1823
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1824
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v4, :cond_1

    .line 1825
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1826
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1841
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1842
    return-void

    .line 1827
    :cond_1
    move v4, v2

    if-eqz v4, :cond_3

    .line 1828
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1830
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1831
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    move-object v7, v1

    .line 1832
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1831
    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1834
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1837
    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1838
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    .line 1839
    move-object v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 3

    .prologue
    .line 1682
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1683
    return-void
.end method

.method closeDrawers(Z)V
    .locals 13

    .prologue
    .line 1686
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 1687
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1688
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 1689
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1690
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v8

    .line 1692
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_1

    move-object v8, v6

    iget-boolean v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v8, :cond_1

    .line 1688
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1696
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1698
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1699
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v5

    move v11, v7

    neg-int v11, v11

    move-object v12, v5

    .line 1700
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1699
    invoke-virtual {v9, v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 1706
    :goto_2
    move-object v8, v6

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1702
    :cond_2
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v5

    move-object v11, v0

    .line 1703
    invoke-virtual {v11}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1702
    invoke-virtual {v9, v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    goto :goto_2

    .line 1709
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1710
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1712
    move v8, v2

    if-eqz v8, :cond_4

    .line 1713
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1715
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1359
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 1360
    const/4 v5, 0x0

    move v2, v5

    .line 1361
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 1362
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v4, v5

    .line 1363
    move v5, v2

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v2, v5

    .line 1361
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    .line 1367
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move v3, v5

    .line 1368
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move v4, v5

    .line 1369
    move v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_2

    .line 1370
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1372
    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1586
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 1587
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 1589
    :cond_0
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v0, v7

    .line 1614
    :goto_0
    return v0

    .line 1592
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v2, v7

    .line 1593
    move v7, v2

    if-eqz v7, :cond_4

    .line 1594
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v3, v7

    .line 1595
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v4, v7

    .line 1598
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_1
    move v7, v5

    if-ltz v7, :cond_4

    .line 1599
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1603
    move-object v7, v0

    move v8, v3

    move v9, v4

    move-object v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1598
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1608
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1609
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 1614
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 882
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v2, v5

    .line 883
    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 884
    move-object v5, v2

    const/4 v6, 0x0

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 886
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 889
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 890
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 891
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 890
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 895
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 896
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    .line 901
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 902
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 903
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 904
    move-object v5, v3

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 908
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 911
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v2, v5

    .line 912
    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 913
    move-object v5, v2

    const/4 v6, 0x1

    iput v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 914
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 917
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 918
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 919
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 918
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 923
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 924
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    .line 927
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 928
    move-object v5, v0

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 931
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 8

    .prologue
    .line 957
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 960
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 961
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 962
    move-object v5, v0

    iget-object v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 961
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 965
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 25

    .prologue
    .line 1453
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v19

    move/from16 v8, v19

    .line 1454
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v19

    move/from16 v9, v19

    .line 1455
    const/16 v19, 0x0

    move/from16 v10, v19

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v19

    move/from16 v11, v19

    .line 1457
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->save()I

    move-result v19

    move/from16 v12, v19

    .line 1458
    move/from16 v19, v9

    if-eqz v19, :cond_5

    .line 1459
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v19

    move/from16 v13, v19

    .line 1460
    const/16 v19, 0x0

    move/from16 v14, v19

    :goto_0
    move/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 1461
    move-object/from16 v19, v3

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1462
    move-object/from16 v19, v15

    move-object/from16 v20, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v19, v15

    .line 1463
    invoke-static/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v19, v3

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v19, v15

    .line 1464
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 1460
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1468
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v20, v15

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1469
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v16, v19

    .line 1470
    move/from16 v19, v16

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move/from16 v19, v16

    move/from16 v10, v19

    .line 1471
    :cond_2
    goto :goto_1

    .line 1472
    :cond_3
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v16, v19

    .line 1473
    move/from16 v19, v16

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    move/from16 v19, v16

    move/from16 v11, v19

    goto :goto_1

    .line 1476
    :cond_4
    move-object/from16 v19, v4

    move/from16 v20, v10

    const/16 v21, 0x0

    move/from16 v22, v11

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v19

    .line 1478
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-wide/from16 v22, v6

    invoke-super/range {v19 .. v23}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v19

    move/from16 v13, v19

    .line 1479
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1481
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_7

    move/from16 v19, v9

    if-eqz v19, :cond_7

    .line 1482
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    move/from16 v19, v0

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    const/16 v20, 0x18

    ushr-int/lit8 v19, v19, 0x18

    move/from16 v14, v19

    .line 1483
    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    .line 1484
    move/from16 v19, v15

    const/16 v20, 0x18

    shl-int/lit8 v19, v19, 0x18

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    or-int v19, v19, v20

    move/from16 v16, v19

    .line 1485
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 1487
    move-object/from16 v19, v4

    move/from16 v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1512
    :cond_6
    :goto_2
    move/from16 v19, v13

    move/from16 v3, v19

    return v3

    .line 1488
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    const/16 v21, 0x3

    .line 1489
    invoke-virtual/range {v19 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1490
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v14, v19

    .line 1491
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v15, v19

    .line 1492
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v19

    move/from16 v16, v19

    .line 1493
    const/16 v19, 0x0

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    .line 1494
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v17, v19

    .line 1495
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move/from16 v20, v15

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v22, v15

    move/from16 v23, v14

    add-int v22, v22, v23

    move-object/from16 v23, v5

    .line 1496
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 1495
    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1497
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f0000    # 255.0f

    move/from16 v21, v17

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1498
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1499
    goto/16 :goto_2

    :cond_8
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    const/16 v21, 0x5

    .line 1500
    invoke-virtual/range {v19 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1501
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v14, v19

    .line 1502
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v15, v19

    .line 1503
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v19

    move/from16 v20, v15

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 1504
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v19

    move/from16 v17, v19

    .line 1505
    const/16 v19, 0x0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    .line 1506
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    move/from16 v18, v19

    .line 1507
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move/from16 v20, v15

    move/from16 v21, v14

    sub-int v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v22, v15

    move-object/from16 v23, v5

    .line 1508
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 1507
    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1509
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f0000    # 255.0f

    move/from16 v21, v18

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1510
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 1026
    move-object v0, p0

    move v1, p1

    move v7, v1

    move-object v8, v0

    .line 1027
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1026
    invoke-static {v7, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v2, v7

    .line 1028
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 1029
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 1030
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 1031
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 1032
    move v7, v6

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 1033
    move-object v7, v5

    move-object v0, v7

    .line 1036
    :goto_1
    return-object v0

    .line 1029
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1036
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 7

    .prologue
    .line 996
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 997
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 998
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 999
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v4, v5

    .line 1000
    move-object v5, v4

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1001
    move-object v5, v3

    move-object v0, v5

    .line 1004
    :goto_1
    return-object v0

    .line 997
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 2024
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 2025
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 2026
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 2027
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2028
    move-object v4, v3

    move-object v0, v4

    .line 2031
    :goto_1
    return-object v0

    .line 2025
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2031
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1962
    move-object v0, p0

    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1981
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1967
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1968
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    .line 1967
    :goto_0
    move-object v0, v2

    return-object v0

    .line 1969
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1970
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1971
    :cond_1
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    sget-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 426
    move-object v1, v0

    iget v1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move v0, v1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 9

    .prologue
    .line 684
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 686
    move v7, v1

    sparse-switch v7, :sswitch_data_0

    .line 729
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    .line 688
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 689
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v7

    goto :goto_0

    .line 691
    :cond_1
    move v7, v2

    if-nez v7, :cond_2

    .line 692
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    :goto_1
    move v3, v7

    .line 693
    move v7, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 694
    move v7, v3

    move v0, v7

    goto :goto_0

    .line 692
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_1

    .line 698
    :sswitch_1
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 699
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    move v0, v7

    goto :goto_0

    .line 701
    :cond_3
    move v7, v2

    if-nez v7, :cond_4

    .line 702
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    :goto_2
    move v4, v7

    .line 703
    move v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 704
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 702
    :cond_4
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_2

    .line 708
    :sswitch_2
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 709
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    move v0, v7

    goto :goto_0

    .line 711
    :cond_5
    move v7, v2

    if-nez v7, :cond_6

    .line 712
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    :goto_3
    move v5, v7

    .line 713
    move v7, v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 714
    move v7, v5

    move v0, v7

    goto :goto_0

    .line 712
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_3

    .line 718
    :sswitch_3
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    .line 719
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    move v0, v7

    goto :goto_0

    .line 721
    :cond_7
    move v7, v2

    if-nez v7, :cond_8

    .line 722
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    :goto_4
    move v6, v7

    .line 723
    move v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 724
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 722
    :cond_8
    move-object v7, v0

    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 741
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 744
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 745
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 778
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    .line 779
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 778
    invoke-static {v3, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v2, v3

    .line 780
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 781
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 785
    :goto_0
    return-object v0

    .line 782
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 783
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 785
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 987
    move v3, v2

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 978
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v0, v2

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1402
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1516
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 5

    .prologue
    .line 1911
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1912
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1913
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1915
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1881
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1882
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1884
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 1885
    move-object v3, v2

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1520
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v4

    .line 1521
    move v4, v2

    move-object v5, v1

    .line 1522
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 1521
    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 1523
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_0

    .line 1525
    const/4 v4, 0x1

    move v0, v4

    .line 1531
    :goto_0
    return v0

    .line 1527
    :cond_0
    move v4, v3

    const/4 v5, 0x5

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_1

    .line 1529
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1531
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 5

    .prologue
    .line 1942
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1943
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1944
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1946
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1927
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1928
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1930
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 1898
    move-object v0, p0

    move-object v1, v0

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 12

    .prologue
    .line 1008
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v3, v8

    .line 1009
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v4, v8

    .line 1010
    move v8, v4

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 1011
    move v8, v4

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 1012
    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    move v7, v8

    .line 1014
    move-object v8, v1

    .line 1015
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    .line 1014
    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1016
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1017
    return-void

    .line 1015
    :cond_0
    move v9, v7

    neg-int v9, v9

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1063
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1064
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1065
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1057
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1058
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1059
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 1435
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1436
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1438
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 1439
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1440
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 1444
    :goto_1
    move v3, v2

    if-lez v3, :cond_0

    .line 1445
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1446
    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1449
    :cond_0
    return-void

    .line 1440
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1442
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1537
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    move v2, v8

    .line 1540
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v1

    .line 1541
    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v3, v8

    .line 1543
    const/4 v8, 0x0

    move v4, v8

    .line 1545
    move v8, v2

    packed-switch v8, :pswitch_data_0

    .line 1577
    :cond_0
    :goto_0
    move v8, v3

    if-nez v8, :cond_1

    move v8, v4

    if-nez v8, :cond_1

    move-object v8, v0

    invoke-direct {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_3

    :cond_1
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    return v0

    .line 1547
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v5, v8

    .line 1548
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v6, v8

    .line 1549
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    .line 1550
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    .line 1551
    move-object v8, v0

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1552
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1553
    move-object v8, v7

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1554
    const/4 v8, 0x1

    move v4, v8

    .line 1557
    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1558
    goto :goto_0

    .line 1563
    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1564
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1565
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1572
    :pswitch_2
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1573
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1577
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 2051
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2052
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/KeyEvent;->startTracking()V

    .line 2053
    const/4 v3, 0x1

    move v0, v3

    .line 2055
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 2060
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 2061
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 2062
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2063
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 2065
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 2067
    :goto_1
    return v0

    .line 2065
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2067
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    .prologue
    .line 1250
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v21, v2

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    .line 1251
    move/from16 v21, v6

    move/from16 v22, v4

    sub-int v21, v21, v22

    move/from16 v8, v21

    .line 1252
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v9, v21

    .line 1253
    const/16 v21, 0x0

    move/from16 v10, v21

    :goto_0
    move/from16 v21, v10

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1254
    move-object/from16 v21, v2

    move/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1256
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1253
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1260
    :cond_1
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object/from16 v12, v21

    .line 1262
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1263
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v11

    .line 1264
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v11

    .line 1265
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    .line 1263
    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1267
    :cond_2
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v13, v21

    .line 1268
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v14, v21

    .line 1272
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1273
    move/from16 v21, v13

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v15, v21

    .line 1274
    move/from16 v21, v13

    move/from16 v22, v15

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    .line 1280
    :goto_2
    move/from16 v21, v16

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_5

    const/16 v21, 0x1

    :goto_3
    move/from16 v17, v21

    .line 1282
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, 0x70

    and-int/lit8 v21, v21, 0x70

    move/from16 v18, v21

    .line 1284
    move/from16 v21, v18

    sparse-switch v21, :sswitch_data_0

    .line 1287
    move-object/from16 v21, v11

    move/from16 v22, v15

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1318
    :goto_4
    move/from16 v21, v17

    if-eqz v21, :cond_3

    .line 1319
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move/from16 v23, v16

    invoke-virtual/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1322
    :cond_3
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    const/16 v21, 0x0

    :goto_5
    move/from16 v19, v21

    .line 1323
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    move/from16 v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1324
    move-object/from16 v21, v11

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1276
    :cond_4
    move/from16 v21, v8

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v15, v21

    .line 1277
    move/from16 v21, v8

    move/from16 v22, v15

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    goto/16 :goto_2

    .line 1280
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1293
    :sswitch_0
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1294
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v19

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v24, v11

    .line 1295
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v19

    move-object/from16 v26, v12

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    .line 1294
    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1298
    goto/16 :goto_4

    .line 1302
    :sswitch_1
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1303
    move/from16 v21, v19

    move/from16 v22, v14

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v20, v21

    .line 1307
    move/from16 v21, v20

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1308
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move/from16 v20, v21

    .line 1312
    :cond_6
    :goto_6
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v20

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v20

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1314
    goto/16 :goto_4

    .line 1309
    :cond_7
    move/from16 v21, v20

    move/from16 v22, v14

    add-int v21, v21, v22

    move/from16 v22, v19

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 1310
    move/from16 v21, v19

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v22, v14

    sub-int v21, v21, v22

    move/from16 v20, v21

    goto :goto_6

    .line 1322
    :cond_8
    const/16 v21, 0x4

    goto/16 :goto_5

    .line 1329
    :cond_9
    sget-boolean v21, Landroidx/drawerlayout/widget/DrawerLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    if-eqz v21, :cond_a

    .line 1331
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v10, v21

    .line 1332
    move-object/from16 v21, v10

    if-eqz v21, :cond_a

    .line 1333
    move-object/from16 v21, v10

    .line 1334
    invoke-static/range {v21 .. v21}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1335
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroidx/core/view/WindowInsetsCompat;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v21

    move-object/from16 v12, v21

    .line 1339
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v22, v0

    .line 1340
    invoke-virtual/range {v22 .. v22}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v22

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1339
    invoke-virtual/range {v21 .. v22}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    .line 1341
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v22, v0

    .line 1342
    invoke-virtual/range {v22 .. v22}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v22

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1341
    invoke-virtual/range {v21 .. v22}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    .line 1346
    :cond_a
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    .line 1347
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    .line 1348
    return-void

    .line 1284
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 1072
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v5, v21

    .line 1073
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v6, v21

    .line 1074
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v7, v21

    .line 1075
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v8, v21

    .line 1077
    move/from16 v21, v5

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move/from16 v21, v6

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1078
    :cond_0
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1083
    move/from16 v21, v5

    if-nez v21, :cond_1

    .line 1084
    const/16 v21, 0x12c

    move/from16 v7, v21

    .line 1086
    :cond_1
    move/from16 v21, v6

    if-nez v21, :cond_2

    .line 1087
    const/16 v21, 0x12c

    move/from16 v8, v21

    .line 1095
    :cond_2
    move-object/from16 v21, v2

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1097
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v21, v2

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_0
    move/from16 v9, v21

    .line 1098
    move-object/from16 v21, v2

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v21

    move/from16 v10, v21

    .line 1102
    const/16 v21, 0x0

    move/from16 v11, v21

    .line 1103
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 1104
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v13, v21

    .line 1105
    const/16 v21, 0x0

    move/from16 v14, v21

    :goto_1
    move/from16 v21, v14

    move/from16 v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 1106
    move-object/from16 v21, v2

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v15, v21

    .line 1108
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 1105
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1090
    :cond_3
    new-instance v21, Ljava/lang/IllegalArgumentException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1097
    :cond_4
    const/16 v21, 0x0

    goto :goto_0

    .line 1112
    :cond_5
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object/from16 v16, v21

    .line 1114
    move/from16 v21, v9

    if-eqz v21, :cond_7

    .line 1115
    move-object/from16 v21, v16

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    move/from16 v22, v10

    invoke-static/range {v21 .. v22}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v21

    move/from16 v17, v21

    .line 1116
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1117
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 1118
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/WindowInsets;

    move-object/from16 v18, v21

    .line 1119
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1120
    move-object/from16 v21, v18

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v22

    move-object/from16 v23, v18

    .line 1121
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v25, v18

    .line 1122
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1120
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1128
    :cond_6
    :goto_3
    move-object/from16 v21, v15

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v21

    .line 1150
    :cond_7
    :goto_4
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1152
    move/from16 v21, v7

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v17, v21

    .line 1154
    move/from16 v21, v8

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v18, v21

    .line 1156
    move-object/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v18

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1157
    goto/16 :goto_2

    .line 1123
    :cond_8
    move/from16 v21, v17

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1124
    move-object/from16 v21, v18

    const/16 v22, 0x0

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    move-object/from16 v24, v18

    .line 1125
    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v24

    move-object/from16 v25, v18

    .line 1126
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1124
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    goto :goto_3

    .line 1131
    :cond_9
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 1132
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/WindowInsets;

    move-object/from16 v18, v21

    .line 1133
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1134
    move-object/from16 v21, v18

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v22

    move-object/from16 v23, v18

    .line 1135
    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v25, v18

    .line 1136
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1134
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1142
    :cond_a
    :goto_5
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1143
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1144
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1145
    move-object/from16 v21, v16

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_4

    .line 1137
    :cond_b
    move/from16 v21, v17

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1138
    move-object/from16 v21, v18

    const/16 v22, 0x0

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v23

    move-object/from16 v24, v18

    .line 1139
    invoke-virtual/range {v24 .. v24}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v24

    move-object/from16 v25, v18

    .line 1140
    invoke-virtual/range {v25 .. v25}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    .line 1138
    invoke-virtual/range {v21 .. v25}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v21

    move-object/from16 v18, v21

    goto :goto_5

    .line 1157
    :cond_c
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1158
    sget-boolean v21, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v21, :cond_d

    .line 1159
    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v21

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_d

    .line 1160
    move-object/from16 v21, v15

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1163
    :cond_d
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    .line 1164
    invoke-virtual/range {v21 .. v22}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v21

    const/16 v22, 0x7

    and-int/lit8 v21, v21, 0x7

    move/from16 v17, v21

    .line 1167
    move/from16 v21, v17

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/16 v21, 0x1

    :goto_6
    move/from16 v18, v21

    .line 1168
    move/from16 v21, v18

    if-eqz v21, :cond_e

    move/from16 v21, v11

    if-nez v21, :cond_f

    :cond_e
    move/from16 v21, v18

    if-nez v21, :cond_11

    move/from16 v21, v12

    if-eqz v21, :cond_11

    .line 1170
    :cond_f
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child drawer has absolute gravity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v17

    .line 1171
    invoke-static/range {v24 .. v24}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " but this "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "DrawerLayout"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " already has a drawer view along that edge"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1167
    :cond_10
    const/16 v21, 0x0

    goto :goto_6

    .line 1174
    :cond_11
    move/from16 v21, v18

    if-eqz v21, :cond_12

    .line 1175
    const/16 v21, 0x1

    move/from16 v11, v21

    .line 1179
    :goto_7
    move/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v19, v21

    .line 1182
    move/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v20, v21

    .line 1185
    move-object/from16 v21, v15

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1186
    goto/16 :goto_2

    .line 1177
    :cond_12
    const/16 v21, 0x1

    move/from16 v12, v21

    goto :goto_7

    .line 1187
    :cond_13
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1192
    :cond_14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 2072
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    instance-of v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v4, :cond_0

    .line 2073
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2099
    :goto_0
    return-void

    .line 2077
    :cond_0
    move-object v4, v1

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    move-object v2, v4

    .line 2078
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2080
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v4, :cond_1

    .line 2081
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 2082
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 2083
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 2087
    :cond_1
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 2088
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2090
    :cond_2
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 2091
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2093
    :cond_3
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 2094
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v6, 0x800003

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2096
    :cond_4
    move-object v4, v2

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 2097
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v6, 0x800005

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 2099
    :cond_5
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    .line 1430
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1431
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 2103
    move-object v0, p0

    move-object v9, v0

    invoke-super {v9}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    move-object v1, v9

    .line 2104
    new-instance v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v9

    .line 2106
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v3, v9

    .line 2107
    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 2108
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 2109
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v9

    .line 2111
    move-object v9, v6

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 2113
    move-object v9, v6

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 2114
    move v9, v7

    if-nez v9, :cond_0

    move v9, v8

    if-eqz v9, :cond_4

    .line 2117
    :cond_0
    move-object v9, v2

    move-object v10, v6

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2122
    :cond_1
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2123
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2124
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2125
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    iput v10, v9, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 2127
    move-object v9, v2

    move-object v0, v9

    return-object v0

    .line 2111
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2113
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 2107
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 1619
    move-object v0, p0

    move-object v1, p1

    move-object v11, v0

    iget-object v11, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1620
    move-object v11, v0

    iget-object v11, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1622
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    move v2, v11

    .line 1624
    move v11, v2

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    packed-switch v11, :pswitch_data_0

    .line 1662
    :goto_0
    :pswitch_0
    const/4 v11, 0x1

    move v0, v11

    return v0

    .line 1626
    :pswitch_1
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move v3, v11

    .line 1627
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move v4, v11

    .line 1628
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    .line 1629
    move-object v11, v0

    move v12, v4

    iput v12, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    .line 1630
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1631
    goto :goto_0

    .line 1635
    :pswitch_2
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move v3, v11

    .line 1636
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move v4, v11

    .line 1637
    const/4 v11, 0x1

    move v5, v11

    .line 1638
    move-object v11, v0

    iget-object v11, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move v12, v3

    float-to-int v12, v12

    move v13, v4

    float-to-int v13, v13

    invoke-virtual {v11, v12, v13}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v11

    move-object v6, v11

    .line 1639
    move-object v11, v6

    if-eqz v11, :cond_0

    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1640
    move v11, v3

    move-object v12, v0

    iget v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v11, v12

    move v7, v11

    .line 1641
    move v11, v4

    move-object v12, v0

    iget v12, v12, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v11, v12

    move v8, v11

    .line 1642
    move-object v11, v0

    iget-object v11, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v11}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v11

    move v9, v11

    .line 1643
    move v11, v7

    move v12, v7

    mul-float/2addr v11, v12

    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move v12, v9

    move v13, v9

    mul-int/2addr v12, v13

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    .line 1645
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    .line 1646
    move-object v11, v10

    if-eqz v11, :cond_0

    .line 1647
    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    move v5, v11

    .line 1651
    :cond_0
    move-object v11, v0

    move v12, v5

    invoke-virtual {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1652
    goto :goto_0

    .line 1647
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1656
    :pswitch_3
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1657
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto/16 :goto_0

    .line 1624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 3

    .prologue
    .line 1722
    move-object v0, p0

    move-object v1, v0

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 1723
    return-void
.end method

.method public openDrawer(I)V
    .locals 5

    .prologue
    .line 1776
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1777
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 9

    .prologue
    .line 1787
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1788
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1789
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No drawer view found with gravity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    .line 1790
    invoke-static {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1792
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1793
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1731
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1732
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1741
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1742
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a sliding drawer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1745
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1746
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v4, :cond_1

    .line 1747
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1748
    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1750
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1751
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    .line 1766
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1767
    return-void

    .line 1752
    :cond_1
    move v4, v2

    if-eqz v4, :cond_3

    .line 1753
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1755
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1756
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1758
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v1

    .line 1759
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1758
    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    goto :goto_0

    .line 1762
    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1763
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    .line 1764
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 4
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 568
    :goto_0
    return-void

    .line 563
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 565
    goto :goto_0

    .line 567
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 568
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 1671
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1673
    move v2, v1

    if-eqz v2, :cond_0

    .line 1674
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1676
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1352
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    if-nez v1, :cond_0

    .line 1353
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1355
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 438
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 439
    move-object v3, v0

    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 440
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    .line 441
    return-void

    .line 439
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 6

    .prologue
    .line 408
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    .line 409
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 410
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 411
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 409
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    if-eqz v2, :cond_0

    .line 526
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 528
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 529
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 533
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    .line 534
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 5

    .prologue
    .line 584
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 585
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 586
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 8

    .prologue
    .line 608
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v2

    move-object v7, v0

    .line 609
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 608
    invoke-static {v6, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    move v3, v6

    .line 611
    move v6, v2

    sparse-switch v6, :sswitch_data_0

    .line 626
    :goto_0
    move v6, v1

    if-eqz v6, :cond_0

    .line 628
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    :goto_1
    move-object v4, v6

    .line 629
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 631
    :cond_0
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 646
    :cond_1
    :goto_2
    return-void

    .line 613
    :sswitch_0
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    .line 614
    goto :goto_0

    .line 616
    :sswitch_1
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    .line 617
    goto :goto_0

    .line 619
    :sswitch_2
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    .line 620
    goto :goto_0

    .line 622
    :sswitch_3
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 628
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    goto :goto_1

    .line 633
    :pswitch_0
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 634
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 635
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 639
    :pswitch_1
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 640
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 641
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 9
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 668
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 671
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    move v3, v4

    .line 672
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 673
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 497
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 498
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v3, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v3, :cond_0

    .line 480
    :goto_0
    return-void

    .line 467
    :cond_0
    move v3, v2

    const v4, 0x800003

    and-int/2addr v3, v4

    const v4, 0x800003

    if-ne v3, v4, :cond_1

    .line 468
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 478
    :goto_1
    move-object v3, v0

    invoke-direct {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 479
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 480
    goto :goto_0

    .line 469
    :cond_1
    move v3, v2

    const v4, 0x800005

    and-int/2addr v3, v4

    const v4, 0x800005

    if-ne v3, v4, :cond_2

    .line 470
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 471
    :cond_2
    move v3, v2

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 472
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 473
    :cond_3
    move v3, v2

    const/4 v4, 0x5

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 474
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 476
    :cond_4
    goto :goto_0
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 6
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 759
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    move-object v5, v0

    .line 760
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 759
    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 761
    move v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 762
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    move v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 764
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 968
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 969
    move v4, v2

    move-object v5, v3

    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 974
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 975
    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 506
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    .line 507
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 508
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 5

    .prologue
    .line 1412
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1413
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1414
    return-void

    .line 1412
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1391
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1392
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1393
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1424
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1425
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 1426
    return-void
.end method

.method updateDrawerState(ILandroid/view/View;)V
    .locals 10

    .prologue
    .line 846
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v8

    move v3, v8

    .line 847
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v8

    move v4, v8

    .line 850
    move v8, v3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 851
    :cond_0
    const/4 v8, 0x1

    move v5, v8

    .line 858
    :goto_0
    move-object v8, v2

    if-eqz v8, :cond_1

    move v8, v1

    if-nez v8, :cond_1

    .line 859
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v6, v8

    .line 860
    move-object v8, v6

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    .line 861
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 867
    :cond_1
    :goto_1
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    if-eq v8, v9, :cond_6

    .line 868
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    .line 870
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 873
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .line 874
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    :goto_2
    move v8, v7

    if-ltz v8, :cond_6

    .line 875
    move-object v8, v0

    iget-object v8, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    move v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move v9, v5

    invoke-interface {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 874
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 852
    :cond_2
    move v8, v3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    move v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 853
    :cond_3
    const/4 v8, 0x2

    move v5, v8

    goto :goto_0

    .line 855
    :cond_4
    const/4 v8, 0x0

    move v5, v8

    goto :goto_0

    .line 862
    :cond_5
    move-object v8, v6

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 863
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    .line 879
    :cond_6
    return-void
.end method
