.class Landroidx/documentfile/provider/TreeDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "TreeDocumentFile.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroidx/documentfile/provider/DocumentFile;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    .line 38
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 39
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 40
    return-void
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 3
    .param p0    # Ljava/lang/AutoCloseable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 170
    move-object v2, v1

    throw v2

    .line 171
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method private static createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 56
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 56
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public canRead()Z
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public canWrite()Z
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const-string v5, "vnd.android.document/directory"

    move-object v6, v1

    invoke-static {v3, v4, v5, v6}, Landroidx/documentfile/provider/TreeDocumentFile;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 65
    move-object v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/documentfile/provider/TreeDocumentFile;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    move-object v6, v1

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Landroidx/documentfile/provider/TreeDocumentFile;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v3, v4

    .line 46
    move-object v4, v3

    if-eqz v4, :cond_0

    new-instance v4, Landroidx/documentfile/provider/TreeDocumentFile;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public delete()Z
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 125
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 125
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public exists()Z
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public isDirectory()Z
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isFile()Z
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isVirtual()Z
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public lastModified()J
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public length()J
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .locals 17

    .prologue
    .line 136
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v1, v8

    .line 137
    move-object v8, v0

    iget-object v8, v8, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    move-object v9, v0

    iget-object v9, v9, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 138
    invoke-static {v9}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-static {v8, v9}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v2, v8

    .line 139
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 141
    const/4 v8, 0x0

    move-object v4, v8

    .line 143
    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x1

    :try_start_0
    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    const-string v13, "document_id"

    aput-object v13, v11, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v4, v8

    .line 145
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    move-object v8, v4

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 147
    move-object v8, v0

    iget-object v8, v8, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v6, v8

    .line 149
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 150
    goto :goto_0

    .line 154
    :cond_0
    move-object v8, v4

    invoke-static {v8}, Landroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    :goto_1
    move-object v8, v3

    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/Uri;

    move-object v5, v8

    .line 158
    move-object v8, v5

    array-length v8, v8

    new-array v8, v8, [Landroidx/documentfile/provider/DocumentFile;

    move-object v6, v8

    .line 159
    const/4 v8, 0x0

    move v7, v8

    :goto_2
    move v8, v7

    move-object v9, v5

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 160
    move-object v8, v6

    move v9, v7

    new-instance v10, Landroidx/documentfile/provider/TreeDocumentFile;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    invoke-direct {v11, v12, v13, v14}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    aput-object v10, v8, v9

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 151
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 152
    :try_start_1
    const-string v8, "DocumentFile"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed query: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 154
    move-object v8, v4

    invoke-static {v8}, Landroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 155
    goto :goto_1

    .line 154
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    invoke-static {v8}, Landroidx/documentfile/provider/TreeDocumentFile;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v8, v7

    throw v8

    .line 162
    :cond_1
    move-object v8, v6

    move-object v0, v8

    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    move-object v5, v1

    .line 179
    invoke-static {v3, v4, v5}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 181
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 182
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v3, 0x1

    move v0, v3

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 187
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 188
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
