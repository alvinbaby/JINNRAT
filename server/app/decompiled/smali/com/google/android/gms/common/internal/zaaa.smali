.class public final Lcom/google/android/gms/common/internal/zaaa;
.super Landroid/widget/Button;
.source "com.google.android.gms:play-services-base@@17.6.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    const/4 v5, 0x0

    const v6, 0x1010048

    .line 1
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final zab(IIII)I
    .locals 6

    .prologue
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v0

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v2, v4

    move-object v4, v2

    const/16 v5, 0x21

    .line 1
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v2

    const-string v5, "Unknown color scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v2

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    throw v4

    :pswitch_0
    move v4, v3

    move v0, v4

    :goto_0
    return v0

    :pswitch_1
    move v4, v2

    move v0, v4

    goto :goto_0

    :pswitch_2
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zaa(Landroid/content/res/Resources;II)V
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 1
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v6, v0

    const/high16 v7, 0x41600000    # 14.0f

    .line 2
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setTextSize(F)V

    move-object v6, v1

    .line 3
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42400000    # 48.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    move-object v6, v0

    move v7, v4

    .line 4
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setMinHeight(I)V

    move-object v6, v0

    move v7, v4

    .line 5
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setMinWidth(I)V

    move v6, v3

    .line 6
    sget v7, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v8, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    sget v9, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    .line 7
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/zaaa;->zab(IIII)I

    move-result v6

    move v4, v6

    move v6, v3

    sget v7, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_dark:I

    sget v8, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    sget v9, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    .line 8
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/common/internal/zaaa;->zab(IIII)I

    move-result v6

    move v5, v6

    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 22
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v1, v6

    move-object v6, v1

    const/16 v7, 0x20

    .line 23
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v1

    const-string v7, "Unknown button size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    :pswitch_0
    move v6, v5

    move v4, v6

    .line 8
    :pswitch_1
    move-object v6, v1

    move v7, v4

    .line 9
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    .line 10
    sget v8, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_tint:I

    .line 11
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 10
    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    move-object v6, v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 12
    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    move-object v6, v0

    move-object v7, v4

    .line 13
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v0

    move-object v7, v1

    move v8, v3

    sget v9, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_dark:I

    sget v10, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    sget v11, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    .line 14
    invoke-static {v8, v9, v10, v11}, Lcom/google/android/gms/common/internal/zaaa;->zab(IIII)I

    move-result v8

    .line 15
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setTextColor(Landroid/content/res/ColorStateList;)V

    move v6, v2

    packed-switch v6, :pswitch_data_1

    .line 18
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v1, v6

    move-object v6, v1

    const/16 v7, 0x20

    .line 22
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v1

    const-string v7, "Unknown button size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    throw v6

    .line 15
    :pswitch_2
    move-object v6, v0

    const/4 v7, 0x0

    .line 16
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    move-object v6, v0

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/zaaa;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    const/16 v7, 0x13

    .line 21
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setGravity(I)V

    :goto_1
    return-void

    :cond_0
    goto :goto_1

    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    .line 17
    sget v8, Lcom/google/android/gms/base/R$string;->common_signin_button_text_long:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    .line 18
    sget v8, Lcom/google/android/gms/base/R$string;->common_signin_button_text:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/internal/zaaa;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 15
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
