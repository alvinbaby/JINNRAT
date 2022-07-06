.class Landroidx/appcompat/graphics/drawable/StateListDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 4
    .param p1    # Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 415
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 416
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 418
    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 10

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 405
    new-instance v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    move-object v3, v4

    .line 406
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 407
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v4

    .line 408
    return-void
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v6, v14

    .line 180
    move-object v14, v3

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v7, v14

    .line 183
    :cond_0
    :goto_0
    move-object v14, v3

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v8, v15

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    move-object v14, v3

    .line 184
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v9, v15

    move v15, v7

    if-ge v14, v15, :cond_1

    move v14, v8

    const/4 v15, 0x3

    if-eq v14, v15, :cond_9

    .line 186
    :cond_1
    move v14, v8

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    move v14, v9

    move v15, v7

    if-gt v14, v15, :cond_0

    move-object v14, v3

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "item"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 190
    goto :goto_0

    .line 194
    :cond_3
    move-object v14, v2

    move-object v15, v5

    move-object/from16 v16, v4

    sget-object v17, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    invoke-static/range {v14 .. v17}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    move-object v10, v14

    .line 196
    const/4 v14, 0x0

    move-object v11, v14

    .line 197
    move-object v14, v10

    sget v15, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem_android_drawable:I

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v12, v14

    .line 199
    move v14, v12

    if-lez v14, :cond_4

    .line 200
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v14

    move-object v15, v1

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v11, v14

    .line 202
    :cond_4
    move-object v14, v10

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    move-object v14, v0

    move-object v15, v4

    invoke-virtual {v14, v15}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v14

    move-object v13, v14

    .line 207
    move-object v14, v11

    if-nez v14, :cond_7

    .line 208
    :goto_1
    move-object v14, v3

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v8, v15

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    goto :goto_1

    .line 211
    :cond_5
    move v14, v8

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    .line 212
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .line 213
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 217
    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_8

    .line 218
    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v14 .. v17}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v11, v14

    .line 223
    :cond_7
    :goto_2
    move-object v14, v6

    move-object v15, v13

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v14

    .line 224
    goto/16 :goto_0

    .line 220
    :cond_8
    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v14 .. v16}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v11, v14

    goto :goto_2

    .line 225
    :cond_9
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v2, v3

    .line 158
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 159
    move-object v3, v2

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    .line 161
    :cond_0
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_variablePadding:I

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    .line 163
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_constantSize:I

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    .line 165
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_enterFadeDuration:I

    move-object v6, v2

    iget v6, v6, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    .line 167
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_exitFadeDuration:I

    move-object v6, v2

    iget v6, v6, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    .line 169
    move-object v3, v2

    move-object v4, v1

    sget v5, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_dither:I

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    .line 171
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 102
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v3

    .line 104
    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 392
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v2

    .line 393
    return-void
.end method

.method clearMutated()V
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 325
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 326
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    new-instance v1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    move-object v0, v1

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 12

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    .line 235
    move-object v7, v1

    invoke-interface {v7}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    move v3, v7

    .line 236
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 237
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 238
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    move v6, v7

    .line 239
    move v7, v6

    sparse-switch v7, :sswitch_data_0

    .line 248
    move-object v7, v4

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move-object v9, v1

    move v10, v5

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 249
    move v9, v6

    :goto_1
    aput v9, v7, v8

    .line 237
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    :sswitch_0
    goto :goto_2

    .line 246
    :sswitch_1
    goto :goto_2

    .line 249
    :cond_0
    move v9, v6

    neg-int v9, v9

    goto :goto_1

    .line 252
    :cond_1
    move-object v7, v4

    move v8, v2

    invoke-static {v7, v8}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v7

    move-object v4, v7

    .line 253
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_1
    .end sparse-switch
.end method

.method getStateCount()I
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getStateDrawableIndex([I)I
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method getStateListState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v0, v1

    return-object v0
.end method

.method getStateSet(I)[I
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v2

    move-object v8, v5

    move-object v9, v4

    sget-object v10, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    invoke-static {v7, v8, v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    .line 144
    move-object v7, v0

    move-object v8, v6

    sget v9, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_visible:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v7

    .line 145
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 146
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 147
    move-object v7, v6

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 149
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v7

    .line 150
    return-void
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 311
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    .line 312
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 314
    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v4

    move v2, v4

    .line 114
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v4

    move v3, v4

    .line 119
    move v4, v3

    if-gez v4, :cond_0

    .line 120
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v4

    move v3, v4

    .line 122
    :cond_0
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 4
    .param p1    # Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 398
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v2, :cond_0

    .line 399
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 401
    :cond_0
    return-void
.end method
