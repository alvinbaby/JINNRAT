.class public abstract Landroidx/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/dynamicanimation/animation/DynamicAnimation",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "translationX"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 74
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "translationY"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 89
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$3;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "translationZ"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 104
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "scaleX"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 119
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "scaleY"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 134
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$6;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "rotation"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 149
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$7;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "rotationX"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 164
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$8;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "rotationY"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 179
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$9;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "x"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 194
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$10;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "y"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 209
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$11;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "z"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 224
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "alpha"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 240
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$13;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "scrollX"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 255
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$14;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "scrollY"

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 10

    .prologue
    .line 339
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 295
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 298
    move-object v3, v1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 302
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 311
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 314
    move-object v3, v1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 315
    move-object v3, v1

    move-object v4, v1

    iget v4, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v4, v4

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 318
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 323
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 326
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 340
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 341
    move-object v3, v1

    new-instance v4, Landroidx/dynamicanimation/animation/DynamicAnimation$15;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const-string v7, "FloatValueHolder"

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation$15;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 352
    move-object v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 353
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 295
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 298
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 302
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 311
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 314
    move-object v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 315
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v4, v4

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 318
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 323
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 326
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 363
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 364
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 365
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v3, v4, :cond_1

    .line 367
    :cond_0
    move-object v3, v0

    const v4, 0x3dcccccd    # 0.1f

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 375
    :goto_0
    return-void

    .line 368
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v3, v4, :cond_2

    .line 369
    move-object v3, v0

    const/high16 v4, 0x3b800000    # 0.00390625f

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_0

    .line 370
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v3, v4, :cond_4

    .line 371
    :cond_3
    move-object v3, v0

    const/high16 v4, 0x3b800000    # 0.00390625f

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_0

    .line 373
    :cond_4
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_0
.end method

.method private endAnimationInternal(Z)V
    .locals 8

    .prologue
    .line 689
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 690
    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/AnimationHandler;->removeCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 691
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 692
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 693
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 694
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 695
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    move-object v4, v0

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    move-object v7, v0

    iget v7, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v3, v4, v5, v6, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    .line 693
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 699
    return-void
.end method

.method private getPropertyValue()F
    .locals 3

    .prologue
    .line 727
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 572
    move v3, v2

    if-ltz v3, :cond_0

    .line 573
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 575
    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 561
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 562
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 560
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 7

    .prologue
    .line 628
    move-object v1, p0

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v2, :cond_3

    .line 629
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 630
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v2, :cond_0

    .line 631
    move-object v2, v1

    move-object v3, v1

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v3

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 634
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    move-object v3, v1

    iget v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    move-object v2, v1

    iget v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    move-object v3, v1

    iget v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 635
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Starting value need to be in between min value and max value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_2
    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v2

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 640
    :cond_3
    return-void
.end method


# virtual methods
.method public addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 459
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 494
    :cond_1
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public cancel()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 606
    move-object v0, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 607
    new-instance v1, Landroid/util/AndroidRuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Animations may only be canceled on the main thread"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v1, :cond_1

    .line 610
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 612
    :cond_1
    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 11
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 654
    move-object v1, p0

    move-wide v2, p1

    move-object v7, v1

    iget-wide v7, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 656
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 657
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 658
    const/4 v7, 0x0

    move v1, v7

    .line 672
    :goto_0
    return v1

    .line 660
    :cond_0
    move-wide v7, v2

    move-object v9, v1

    iget-wide v9, v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    sub-long/2addr v7, v9

    move-wide v4, v7

    .line 661
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 662
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v7

    move v6, v7

    .line 664
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    move-object v9, v1

    iget v9, v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 665
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    move-object v9, v1

    iget v9, v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 667
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 669
    move v7, v6

    if-eqz v7, :cond_1

    .line 670
    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 672
    :cond_1
    move v7, v6

    move v1, v7

    goto :goto_0
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .locals 2

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    move v0, v1

    return v0
.end method

.method getValueThreshold()F
    .locals 3

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 620
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    move v0, v1

    return v0
.end method

.method public removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 430
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 444
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 538
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Minimum visible change must be positive."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 540
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 541
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 542
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setPropertyValue(F)V
    .locals 7

    .prologue
    .line 706
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-object v4, v0

    iget-object v4, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 707
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 708
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 709
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    move-object v6, v0

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v3, v4, v5, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    .line 707
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 712
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 713
    return-void
.end method

.method public setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 387
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 388
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 412
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 591
    new-instance v1, Landroid/util/AndroidRuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Animations may only be started on the main thread"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v1, :cond_1

    .line 594
    move-object v1, v0

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal()V

    .line 596
    :cond_1
    return-void
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
