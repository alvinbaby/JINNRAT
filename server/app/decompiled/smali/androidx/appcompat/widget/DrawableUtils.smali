.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static final VECTOR_DRAWABLE_CLAZZ_NAME:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 45
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const v4, 0x10100a0

    aput v4, v2, v3

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    .line 46
    const/4 v1, 0x0

    new-array v1, v1, [I

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 59
    :try_start_0
    const-string v1, "android.graphics.Insets"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 9
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    move-object v0, p0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-ge v7, v8, :cond_0

    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v7, :cond_0

    .line 143
    const/4 v7, 0x0

    move v0, v7

    .line 176
    :goto_0
    return v0

    .line 144
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-ge v7, v8, :cond_1

    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_1

    .line 147
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 148
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v7, v8, :cond_2

    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_2

    .line 149
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 152
    :cond_2
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v7, :cond_5

    .line 154
    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    move-object v1, v7

    .line 155
    move-object v7, v1

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v7, :cond_4

    .line 156
    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v2, v7

    .line 158
    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_4

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 159
    move-object v7, v6

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 160
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 158
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 164
    :cond_5
    move-object v7, v0

    instance-of v7, v7, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v7, :cond_6

    .line 165
    move-object v7, v0

    check-cast v7, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 167
    invoke-interface {v7}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 165
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 168
    :cond_6
    move-object v7, v0

    instance-of v7, v7, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    if-eqz v7, :cond_7

    .line 169
    move-object v7, v0

    check-cast v7, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    .line 171
    invoke-virtual {v7}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 169
    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 172
    :cond_7
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v7, :cond_4

    .line 173
    move-object v7, v0

    check-cast v7, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v0, v7

    goto/16 :goto_0
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    move-object v2, v0

    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_0
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    move-object v1, v2

    .line 185
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_1

    .line 187
    :cond_0
    move-object v2, v0

    sget-object v3, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 193
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 194
    return-void

    .line 190
    :cond_1
    move-object v2, v0

    sget-object v3, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    goto :goto_0
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 14

    .prologue
    .line 73
    move-object v0, p0

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_0

    .line 74
    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v10

    move-object v1, v10

    .line 75
    new-instance v10, Landroid/graphics/Rect;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v10

    .line 76
    move-object v10, v2

    move-object v11, v1

    iget v11, v11, Landroid/graphics/Insets;->left:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 77
    move-object v10, v2

    move-object v11, v1

    iget v11, v11, Landroid/graphics/Insets;->right:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 78
    move-object v10, v2

    move-object v11, v1

    iget v11, v11, Landroid/graphics/Insets;->top:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 79
    move-object v10, v2

    move-object v11, v1

    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 80
    move-object v10, v2

    move-object v0, v10

    .line 122
    :goto_0
    return-object v0

    .line 82
    :cond_0
    sget-object v10, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v10, :cond_2

    .line 86
    move-object v10, v0

    :try_start_0
    invoke-static {v10}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v0, v10

    .line 88
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getOpticalInsets"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    .line 89
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v1, v10

    .line 90
    move-object v10, v1

    move-object v11, v0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    .line 92
    move-object v10, v2

    if-eqz v10, :cond_4

    .line 94
    new-instance v10, Landroid/graphics/Rect;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v10

    .line 96
    sget-object v10, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_3

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 97
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const/4 v10, -0x1

    move v9, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_2
    move v10, v9

    packed-switch v10, :pswitch_data_0

    .line 96
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    :sswitch_0
    move-object v10, v8

    const-string v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    move v9, v10

    goto :goto_2

    :sswitch_1
    move-object v10, v8

    const-string v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    move v9, v10

    goto :goto_2

    :sswitch_2
    move-object v10, v8

    const-string v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    move v9, v10

    goto :goto_2

    :sswitch_3
    move-object v10, v8

    const-string v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    move v9, v10

    goto :goto_2

    .line 99
    :pswitch_0
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 100
    goto :goto_3

    .line 102
    :pswitch_1
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 103
    goto :goto_3

    .line 105
    :pswitch_2
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 106
    goto :goto_3

    .line 108
    :pswitch_3
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 114
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 116
    const-string v10, "DrawableUtils"

    const-string v11, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 122
    :cond_2
    :goto_4
    sget-object v10, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v0, v10

    goto/16 :goto_0

    .line 112
    :cond_3
    move-object v10, v3

    move-object v0, v10

    goto/16 :goto_0

    .line 117
    :cond_4
    goto :goto_4

    .line 97
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 200
    move v0, p0

    move-object v1, p1

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 207
    :pswitch_0
    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    .line 201
    :pswitch_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 202
    :pswitch_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 203
    :pswitch_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 204
    :pswitch_4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 205
    :pswitch_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 206
    :pswitch_6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
