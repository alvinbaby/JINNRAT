.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 11
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 132
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 133
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v5, 0x0

    .line 134
    .local v5, "supported":Z
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v8, v7

    .line 135
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 136
    const/4 v5, 0x1

    .line 140
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_2

    .line 185
    :goto_1
    return v6

    .line 134
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x19

    if-lt v7, v8, :cond_3

    .line 146
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputContentInfo;

    .line 145
    invoke-interface {p0, v6, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v6

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    .line 150
    .local v4, "protocol":I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 156
    :pswitch_0
    const/4 v1, 0x1

    .line 163
    .local v1, "interop":Z
    :goto_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v3, "params":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 165
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 167
    :goto_3
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    .line 164
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    if-eqz v1, :cond_5

    .line 169
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 171
    :goto_4
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    .line 168
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    if-eqz v1, :cond_6

    .line 173
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 175
    :goto_5
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v7

    .line 172
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    if-eqz v1, :cond_7

    .line 177
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 176
    :goto_6
    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    if-eqz v1, :cond_8

    .line 181
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 180
    :goto_7
    invoke-virtual {v3, v6, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    if-eqz v1, :cond_9

    .line 186
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 185
    :goto_8
    invoke-interface {p0, v6, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    goto :goto_1

    .line 153
    .end local v1    # "interop":Z
    .end local v3    # "params":Landroid/os/Bundle;
    :pswitch_1
    const/4 v1, 0x0

    .line 154
    .restart local v1    # "interop":Z
    goto :goto_2

    .line 166
    .restart local v3    # "params":Landroid/os/Bundle;
    :cond_4
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_3

    .line 170
    :cond_5
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_4

    .line 174
    :cond_6
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_5

    .line 178
    :cond_7
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_6

    .line 182
    :cond_8
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_7

    .line 187
    :cond_9
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_8

    .line 150
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 260
    if-nez p0, :cond_0

    .line 261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputConnection must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_0
    if-nez p1, :cond_1

    .line 264
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "editorInfo must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_1
    if-nez p2, :cond_2

    .line 267
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "onCommitContentListener must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_4

    .line 270
    move-object v1, p2

    .line 271
    .local v1, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v2, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v2, p0, v4, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v2

    .line 288
    .end local v1    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .end local p0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_3
    :goto_0
    return-object p0

    .line 283
    .restart local p0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_4
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_3

    .line 287
    move-object v1, p2

    .line 288
    .restart local v1    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v2, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v2, p0, v4, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v2

    goto :goto_0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 14
    .param p0, "action"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "data"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v12

    .line 77
    :cond_1
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v10, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 78
    const/4 v5, 0x0

    .line 84
    .local v5, "interop":Z
    :goto_1
    const/4 v9, 0x0

    .line 85
    .local v9, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v8, 0x0

    .line 87
    .local v8, "result":Z
    if-eqz v5, :cond_5

    .line 88
    :try_start_0
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 87
    :goto_2
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/os/ResultReceiver;

    move-object v9, v0

    .line 90
    if-eqz v5, :cond_6

    .line 91
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 90
    :goto_3
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 93
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v5, :cond_7

    .line 94
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 93
    :goto_4
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ClipDescription;

    .line 96
    .local v2, "description":Landroid/content/ClipDescription;
    if-eqz v5, :cond_8

    .line 97
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 96
    :goto_5
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 99
    .local v6, "linkUri":Landroid/net/Uri;
    if-eqz v5, :cond_9

    .line 100
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 99
    :goto_6
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 102
    .local v3, "flags":I
    if-eqz v5, :cond_a

    .line 103
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 102
    :goto_7
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 105
    .local v7, "opts":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 106
    new-instance v4, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v4, v1, v2, v6}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 108
    .local v4, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v3, v7}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 111
    .end local v4    # "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    :cond_2
    if-eqz v9, :cond_3

    .line 112
    if-eqz v8, :cond_b

    move v10, v11

    :goto_8
    invoke-virtual {v9, v10, v13}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    move v12, v8

    .line 115
    goto :goto_0

    .line 79
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "description":Landroid/content/ClipDescription;
    .end local v3    # "flags":I
    .end local v5    # "interop":Z
    .end local v6    # "linkUri":Landroid/net/Uri;
    .end local v7    # "opts":Landroid/os/Bundle;
    .end local v8    # "result":Z
    .end local v9    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_4
    const-string v10, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v10, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    const/4 v5, 0x1

    .restart local v5    # "interop":Z
    goto :goto_1

    .line 89
    .restart local v8    # "result":Z
    .restart local v9    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_5
    :try_start_1
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_2

    .line 92
    :cond_6
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_3

    .line 95
    .restart local v1    # "contentUri":Landroid/net/Uri;
    :cond_7
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_4

    .line 98
    .restart local v2    # "description":Landroid/content/ClipDescription;
    :cond_8
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_5

    .line 101
    .restart local v6    # "linkUri":Landroid/net/Uri;
    :cond_9
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_6

    .line 104
    .restart local v3    # "flags":I
    :cond_a
    const-string v10, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .restart local v7    # "opts":Landroid/os/Bundle;
    :cond_b
    move v10, v12

    .line 112
    goto :goto_8

    .line 111
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "description":Landroid/content/ClipDescription;
    .end local v3    # "flags":I
    .end local v6    # "linkUri":Landroid/net/Uri;
    .end local v7    # "opts":Landroid/os/Bundle;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_c

    .line 112
    if-eqz v8, :cond_d

    :goto_9
    invoke-virtual {v9, v11, v13}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 114
    :cond_c
    throw v10

    :cond_d
    move v11, v12

    .line 112
    goto :goto_9
.end method
