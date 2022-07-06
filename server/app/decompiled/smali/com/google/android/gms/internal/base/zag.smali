.class final Lcom/google/android/gms/internal/base/zag;
.super Landroid/graphics/drawable/Drawable;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field private static final zaa:Lcom/google/android/gms/internal/base/zag;

.field private static final zab:Lcom/google/android/gms/internal/base/zaf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v1, Lcom/google/android/gms/internal/base/zag;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/internal/base/zag;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/internal/base/zag;->zaa:Lcom/google/android/gms/internal/base/zag;

    new-instance v1, Lcom/google/android/gms/internal/base/zaf;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/base/zaf;-><init>(Lcom/google/android/gms/internal/base/zae;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/internal/base/zag;->zab:Lcom/google/android/gms/internal/base/zaf;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zaa()Lcom/google/android/gms/internal/base/zag;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/zag;->zaa:Lcom/google/android/gms/internal/base/zag;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    move-object v0, p0

    sget-object v1, Lcom/google/android/gms/internal/base/zag;->zab:Lcom/google/android/gms/internal/base/zaf;

    move-object v0, v1

    return-object v0
.end method

.method public final getOpacity()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x2

    move v0, v1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
