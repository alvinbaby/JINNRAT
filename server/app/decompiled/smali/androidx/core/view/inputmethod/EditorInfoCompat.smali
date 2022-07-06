.class public final Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;
    }
.end annotation


# static fields
.field private static final CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_MIME_TYPES_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_SELECTION_END_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

.field private static final CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

.field private static final CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field static final MAX_INITIAL_SELECTION_LENGTH:I = 0x400
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 3
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_2

    .line 182
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 183
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 192
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 183
    .restart local v0    # "result":[Ljava/lang/String;
    :cond_1
    sget-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 185
    .end local v0    # "result":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 186
    sget-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_3
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "result":[Ljava/lang/String;
    if-nez v0, :cond_4

    .line 190
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_4
    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "flags"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 391
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_1

    .line 392
    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 418
    :cond_0
    :goto_0
    return-object v6

    .line 395
    :cond_1
    iget-object v7, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 400
    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v7, v8, :cond_2

    .line 401
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 402
    .local v1, "correctedTextSelStart":I
    :goto_1
    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v8, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v7, v8, :cond_3

    .line 403
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 405
    .local v0, "correctedTextSelEnd":I
    :goto_2
    iget-object v7, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v8, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 406
    .local v3, "selectionHead":I
    iget-object v7, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v8, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 407
    .local v2, "selectionEnd":I
    sub-int v4, v0, v1

    .line 408
    .local v4, "sourceSelLength":I
    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ltz v7, :cond_0

    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ltz v7, :cond_0

    sub-int v7, v2, v3

    if-ne v7, v4, :cond_0

    .line 412
    iget-object v7, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v8, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 413
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 415
    .local v5, "surroundingText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 418
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_4

    .line 419
    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    .line 401
    .end local v0    # "correctedTextSelEnd":I
    .end local v1    # "correctedTextSelStart":I
    .end local v2    # "selectionEnd":I
    .end local v3    # "selectionHead":I
    .end local v4    # "sourceSelLength":I
    .end local v5    # "surroundingText":Ljava/lang/CharSequence;
    :cond_2
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_1

    .line 403
    .restart local v1    # "correctedTextSelStart":I
    :cond_3
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_2

    .line 420
    .restart local v0    # "correctedTextSelEnd":I
    .restart local v2    # "selectionEnd":I
    .restart local v3    # "selectionHead":I
    .restart local v4    # "sourceSelLength":I
    .restart local v5    # "surroundingText":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v5, v3, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 437
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_1

    .line 438
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 453
    :cond_0
    :goto_0
    return-object v3

    .line 441
    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v5, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 446
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 448
    .local v1, "surroundingText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 451
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, "selectionEnd":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 453
    .local v2, "textLength":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    .line 454
    add-int v3, v0, v2

    invoke-interface {v1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 455
    :cond_2
    add-int v3, v0, v2

    invoke-static {v1, v0, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 356
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_1

    .line 357
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 373
    :cond_0
    :goto_0
    return-object v3

    .line 360
    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v5, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 365
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 367
    .local v1, "surroundingText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 371
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 372
    .local v0, "selectionHead":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 373
    .local v2, "textLength":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    .line 374
    sub-int v3, v0, v2

    invoke-interface {v1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 375
    :cond_2
    sub-int v3, v0, v2

    invoke-static {v1, v3, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static getProtocol(Landroid/view/inputmethod/EditorInfo;)I
    .locals 5
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v2, 0x0

    .line 504
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_1

    .line 505
    const/4 v2, 0x1

    .line 521
    :cond_0
    :goto_0
    return v2

    .line 507
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 511
    .local v0, "hasNewKey":Z
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 512
    .local v1, "hasOldKey":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 513
    const/4 v2, 0x4

    goto :goto_0

    .line 515
    :cond_2
    if-eqz v0, :cond_3

    .line 516
    const/4 v2, 0x3

    goto :goto_0

    .line 518
    :cond_3
    if-eqz v1, :cond_0

    .line 519
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private static isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "sourceText"    # Ljava/lang/CharSequence;
    .param p1, "cutPosition"    # I
    .param p2, "policy"    # I

    .prologue
    .line 460
    packed-switch p2, :pswitch_data_0

    .line 466
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 462
    :pswitch_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 471
    and-int/lit16 v0, p0, 0xfff

    .line 473
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 2
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "contentMimeTypes"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 159
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 164
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .locals 7
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "subText"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "subTextStart"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 235
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 237
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    .line 268
    :goto_0
    return-void

    .line 242
    :cond_0
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v3, v4, :cond_2

    .line 243
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    sub-int v2, v3, p2

    .line 245
    .local v2, "subTextSelStart":I
    :goto_1
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v3, v4, :cond_3

    .line 246
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    sub-int v1, v3, p2

    .line 249
    .local v1, "subTextSelEnd":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 251
    .local v0, "subTextLength":I
    if-ltz p2, :cond_1

    if-ltz v2, :cond_1

    if-le v1, v0, :cond_4

    .line 252
    :cond_1
    invoke-static {p0, v6, v5, v5}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 244
    .end local v0    # "subTextLength":I
    .end local v1    # "subTextSelEnd":I
    .end local v2    # "subTextSelStart":I
    :cond_2
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    sub-int v2, v3, p2

    goto :goto_1

    .line 247
    .restart local v2    # "subTextSelStart":I
    :cond_3
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    sub-int v1, v3, p2

    goto :goto_2

    .line 257
    .restart local v0    # "subTextLength":I
    .restart local v1    # "subTextSelEnd":I
    :cond_4
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v3}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isPasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 258
    invoke-static {p0, v6, v5, v5}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 262
    :cond_5
    const/16 v3, 0x800

    if-gt v0, v3, :cond_6

    .line 263
    invoke-static {p0, p1, v2, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 267
    :cond_6
    invoke-static {p0, p1, v2, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public static setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "sourceText"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 213
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {p0, p1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private static setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 3
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "surroundingText"    # Ljava/lang/CharSequence;
    .param p2, "selectionHead"    # I
    .param p3, "selectionEnd"    # I

    .prologue
    .line 484
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 485
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 488
    :cond_0
    if-eqz p1, :cond_1

    .line 489
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 490
    .local v0, "surroundingTextCopy":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    return-void

    .line 489
    .end local v0    # "surroundingTextCopy":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 22
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "subText"    # Ljava/lang/CharSequence;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I

    .prologue
    .line 289
    sub-int v15, p3, p2

    .line 291
    .local v15, "sourceSelLength":I
    const/16 v18, 0x400

    move/from16 v0, v18

    if-le v15, v0, :cond_2

    .line 292
    const/4 v12, 0x0

    .line 295
    .local v12, "newSelLength":I
    :goto_0
    move/from16 v17, p2

    .line 296
    .local v17, "subTextBeforeCursorLength":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v18

    sub-int v16, v18, p3

    .line 297
    .local v16, "subTextAfterCursorLength":I
    rsub-int v6, v12, 0x800

    .line 298
    .local v6, "maxLengthMinusSelection":I
    const-wide v18, 0x3fe999999999999aL    # 0.8

    int-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    .line 299
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 300
    .local v14, "possibleMaxBeforeCursorLength":I
    sub-int v18, v6, v14

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 302
    .local v7, "newAfterCursorLength":I
    sub-int v18, v6, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 306
    .local v9, "newBeforeCursorLength":I
    sub-int v8, v17, v9

    .line 309
    .local v8, "newBeforeCursorHead":I
    sub-int v18, p2, v9

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 311
    add-int/lit8 v8, v8, 0x1

    .line 312
    add-int/lit8 v9, v9, -0x1

    .line 314
    :cond_0
    add-int v18, p3, v7

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 316
    add-int/lit8 v7, v7, -0x1

    .line 320
    :cond_1
    add-int v18, v9, v12

    add-int v13, v18, v7

    .line 322
    .local v13, "newTextLength":I
    if-eq v12, v15, :cond_3

    .line 323
    add-int v18, v8, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 325
    .local v5, "beforeCursor":Ljava/lang/CharSequence;
    add-int v18, p3, v7

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 328
    .local v4, "afterCursor":Ljava/lang/CharSequence;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 336
    .end local v4    # "afterCursor":Ljava/lang/CharSequence;
    .end local v5    # "beforeCursor":Ljava/lang/CharSequence;
    .local v10, "newInitialSurroundingText":Ljava/lang/CharSequence;
    :goto_1
    const/4 v8, 0x0

    .line 337
    add-int v11, v8, v9

    .line 338
    .local v11, "newSelHead":I
    add-int v18, v11, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v10, v11, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 340
    return-void

    .end local v6    # "maxLengthMinusSelection":I
    .end local v7    # "newAfterCursorLength":I
    .end local v8    # "newBeforeCursorHead":I
    .end local v9    # "newBeforeCursorLength":I
    .end local v10    # "newInitialSurroundingText":Ljava/lang/CharSequence;
    .end local v11    # "newSelHead":I
    .end local v12    # "newSelLength":I
    .end local v13    # "newTextLength":I
    .end local v14    # "possibleMaxBeforeCursorLength":I
    .end local v16    # "subTextAfterCursorLength":I
    .end local v17    # "subTextBeforeCursorLength":I
    :cond_2
    move v12, v15

    .line 292
    goto/16 :goto_0

    .line 330
    .restart local v6    # "maxLengthMinusSelection":I
    .restart local v7    # "newAfterCursorLength":I
    .restart local v8    # "newBeforeCursorHead":I
    .restart local v9    # "newBeforeCursorLength":I
    .restart local v12    # "newSelLength":I
    .restart local v13    # "newTextLength":I
    .restart local v14    # "possibleMaxBeforeCursorLength":I
    .restart local v16    # "subTextAfterCursorLength":I
    .restart local v17    # "subTextBeforeCursorLength":I
    :cond_3
    add-int v18, v8, v13

    .line 331
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "newInitialSurroundingText":Ljava/lang/CharSequence;
    goto :goto_1
.end method
