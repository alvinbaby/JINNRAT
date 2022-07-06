.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/SignInButton$ColorScheme;,
        Lcom/google/android/gms/common/SignInButton$ButtonSize;
    }
.end annotation


# static fields
.field public static final COLOR_AUTO:I = 0x2

.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final SIZE_ICON_ONLY:I = 0x2

.field public static final SIZE_STANDARD:I = 0x0

.field public static final SIZE_WIDE:I = 0x1


# instance fields
.field private zaa:I

.field private zab:I

.field private zac:Landroid/view/View;

.field private zad:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    .line 2
    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    .line 3
    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/common/SignInButton;->zad:Landroid/view/View$OnClickListener;

    move-object v4, v1

    .line 4
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Lcom/google/android/gms/base/R$styleable;->SignInButton:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v1, v4

    move-object v4, v0

    move-object v5, v1

    :try_start_0
    sget v6, Lcom/google/android/gms/base/R$styleable;->SignInButton_buttonSize:I

    const/4 v7, 0x0

    .line 5
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move-object v4, v0

    move-object v5, v1

    sget v6, Lcom/google/android/gms/base/R$styleable;->SignInButton_colorScheme:I

    const/4 v7, 0x2

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/gms/common/SignInButton;->zab:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    move-object v4, v1

    .line 7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/SignInButton;->zab:I

    .line 9
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void

    .line 6
    :catchall_0
    move-exception v4

    move-object v0, v4

    move-object v4, v1

    .line 7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v0

    .line 8
    throw v4
.end method

.method private final zaa(Landroid/content/Context;)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    .line 1
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v5, v0

    :try_start_0
    iget v5, v5, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move v2, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/SignInButton;->zab:I

    move v3, v5

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    .line 2
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/common/internal/zaz;->zaa(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    move-object v6, v0

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    move-object v6, v0

    .line 8
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v5

    const-string v5, "SignInButton"

    const-string v6, "Sign in button not found, using placeholder instead"

    .line 3
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move v2, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/SignInButton;->zab:I

    move v3, v5

    new-instance v5, Lcom/google/android/gms/common/internal/zaaa;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    const/4 v7, 0x0

    .line 4
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/internal/zaaa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v5, v4

    move-object v6, v1

    .line 5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/zaaa;->zaa(Landroid/content/res/Resources;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/SignInButton;->zad:Landroid/view/View$OnClickListener;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    if-ne v3, v4, :cond_0

    move-object v3, v2

    move-object v4, v0

    .line 1
    invoke-interface {v3, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public setColorScheme(I)V
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move v4, v1

    .line 1
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    .line 1
    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    move v3, v1

    .line 2
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/SignInButton;->zad:Landroid/view/View$OnClickListener;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/SignInButton;->zac:Landroid/view/View;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    .line 1
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 5
    .param p1    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/SignInButton;->zab:I

    .line 1
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setSize(I)V
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/SignInButton;->zab:I

    .line 1
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setStyle(II)V
    .locals 5

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/gms/common/SignInButton;->zaa:I

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/SignInButton;->zab:I

    move-object v3, v0

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/SignInButton;->zaa(Landroid/content/Context;)V

    return-void
.end method

.method public setStyle(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 7
    .param p3    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    .line 2
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method
