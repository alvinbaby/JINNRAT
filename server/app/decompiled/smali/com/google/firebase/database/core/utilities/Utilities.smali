.class public Lcom/google/firebase/database/core/utilities/Utilities;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# static fields
.field private static final HEX_CHARACTERS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static compareInts(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 184
    if-ge p0, p1, :cond_0

    .line 185
    const/4 v0, -0x1

    .line 189
    :goto_0
    return v0

    .line 186
    :cond_0
    if-ne p0, p1, :cond_1

    .line 187
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compareLongs(JJ)I
    .locals 2
    .param p0, "i"    # J
    .param p2, "j"    # J

    .prologue
    .line 194
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 195
    const/4 v0, -0x1

    .line 199
    :goto_0
    return v0

    .line 196
    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static doubleToHashString(D)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # D

    .prologue
    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 134
    .local v0, "bits":J
    const/4 v4, 0x7

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 135
    mul-int/lit8 v7, v4, 0x8

    ushr-long v8, v0, v7

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v2, v8

    .line 136
    .local v2, "byteValue":I
    shr-int/lit8 v7, v2, 0x4

    and-int/lit8 v3, v7, 0xf

    .line 137
    .local v3, "high":I
    and-int/lit8 v5, v2, 0xf

    .line 138
    .local v5, "low":I
    sget-object v7, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    aget-char v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    sget-object v7, Lcom/google/firebase/database/core/utilities/Utilities;->HEX_CHARACTERS:[C

    aget-char v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 141
    .end local v2    # "byteValue":I
    .end local v3    # "high":I
    .end local v5    # "low":I
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TC;>;)TC;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    const/4 v2, 0x0

    .line 212
    if-nez p0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v2

    .line 215
    :cond_1
    const-class v3, Ljava/util/Map;

    invoke-static {p0, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 216
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 218
    invoke-static {v1, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static hardAssert(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 225
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 226
    return-void
.end method

.method public static hardAssert(ZLjava/lang/String;)V
    .locals 3
    .param p0, "condition"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 229
    if-nez p0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hardAssert failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 232
    :cond_0
    return-void
.end method

.method public static parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v5, p0

    .line 40
    .local v5, "original":Ljava/lang/String;
    :try_start_0
    const-string v17, "//"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 41
    .local v15, "schemeOffset":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 42
    new-instance v17, Ljava/net/URISyntaxException;

    const-string v18, "Invalid scheme specified"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v15    # "schemeOffset":I
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/net/URISyntaxException;
    new-instance v17, Lcom/google/firebase/database/DatabaseException;

    const-string v18, "Invalid Firebase Database url specified"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 44
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .restart local v15    # "schemeOffset":I
    :cond_0
    add-int/lit8 v17, v15, 0x2

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 45
    .local v9, "pathOffset":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_3

    .line 46
    add-int/lit8 v17, v15, 0x2

    add-int v9, v9, v17

    .line 47
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "/"

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "pathSegments":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 50
    aget-object v17, v10, v4

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 51
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    aget-object v17, v10, v4

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    .end local v10    # "pathSegments":[Ljava/lang/String;
    :cond_3
    new-instance v16, Ljava/net/URI;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 61
    .local v16, "uri":Ljava/net/URI;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "+"

    const-string v19, " "

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "pathString":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    .line 63
    new-instance v8, Lcom/google/firebase/database/core/Path;

    invoke-direct {v8, v11}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 64
    .local v8, "path":Lcom/google/firebase/database/core/Path;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, "scheme":Ljava/lang/String;
    new-instance v13, Lcom/google/firebase/database/core/RepoInfo;

    invoke-direct {v13}, Lcom/google/firebase/database/core/RepoInfo;-><init>()V

    .line 67
    .local v13, "repoInfo":Lcom/google/firebase/database/core/RepoInfo;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    .line 69
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPort()I

    move-result v12

    .line 70
    .local v12, "port":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_4

    .line 71
    const-string v17, "https"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    .line 72
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    .line 76
    :goto_1
    iget-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\\."

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "parts":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v7, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    .line 79
    iget-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/google/firebase/database/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 80
    new-instance v6, Lcom/google/firebase/database/core/utilities/ParsedUrl;

    invoke-direct {v6}, Lcom/google/firebase/database/core/utilities/ParsedUrl;-><init>()V

    .line 81
    .local v6, "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    iput-object v8, v6, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    .line 82
    iput-object v13, v6, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    .line 83
    return-object v6

    .line 74
    .end local v6    # "parsedUrl":Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/google/firebase/database/core/RepoInfo;->secure:Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 87
    .end local v8    # "path":Lcom/google/firebase/database/core/Path;
    .end local v9    # "pathOffset":I
    .end local v11    # "pathString":Ljava/lang/String;
    .end local v12    # "port":I
    .end local v13    # "repoInfo":Lcom/google/firebase/database/core/RepoInfo;
    .end local v14    # "scheme":Ljava/lang/String;
    .end local v15    # "schemeOffset":I
    .end local v16    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v17, Lcom/google/firebase/database/DatabaseException;

    const-string v18, "Failed to URLEncode the path"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public static sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 109
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 111
    .local v0, "bytes":[B
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 112
    .end local v0    # "bytes":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Missing SHA-1 MessageDigest provider."

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 114
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "UTF-8 encoding is required for Firebase Database to run!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "maxFrameSize"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, p1, :cond_0

    .line 94
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 102
    :goto_0
    return-object v4

    .line 96
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v3, "segs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 98
    add-int v4, v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "seg":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/2addr v1, p1

    goto :goto_1

    .line 102
    .end local v0    # "end":I
    .end local v2    # "seg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x22

    .line 120
    move-object v0, p0

    .line 121
    .local v0, "escaped":Ljava/lang/String;
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 122
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 125
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-gt v6, v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v3

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, "i":I
    const/4 v2, 0x0

    .line 152
    .local v2, "negative":Z
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 156
    const/4 v2, 0x1

    .line 157
    const/4 v1, 0x1

    .line 160
    :cond_2
    const-wide/16 v4, 0x0

    .line 161
    .local v4, "number":J
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 163
    .local v0, "c":C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_0

    const/16 v6, 0x39

    if-gt v0, v6, :cond_0

    .line 166
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_1

    .line 169
    .end local v0    # "c":C
    :cond_3
    if-eqz v2, :cond_4

    .line 170
    neg-long v6, v4

    const-wide/32 v8, -0x80000000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 173
    neg-long v6, v4

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 176
    :cond_4
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 179
    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public static wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;
    .locals 4
    .param p0, "optListener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Pair",
            "<",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 238
    .local v1, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v0, Lcom/google/firebase/database/core/utilities/Utilities$1;

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 249
    .local v0, "listener":Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    new-instance v2, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .end local v0    # "listener":Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .end local v1    # "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/firebase/database/core/utilities/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
