.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
    .locals 12
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const-wide/16 v10, 0x1

    const v8, 0xdfff

    .line 82
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "string == null"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_0
    if-gez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginIndex < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_1
    if-ge p2, p1, :cond_2

    .line 85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le p2, v3, :cond_3

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex > string.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_3
    const-wide/16 v4, 0x0

    .line 93
    .local v4, "result":J
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_b

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 96
    .local v0, "c":I
    const/16 v3, 0x80

    if-ge v0, v3, :cond_4

    .line 98
    add-long/2addr v4, v10

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_4
    const/16 v3, 0x800

    if-ge v0, v3, :cond_5

    .line 103
    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_5
    const v3, 0xd800

    if-lt v0, v3, :cond_6

    if-le v0, v8, :cond_7

    .line 108
    :cond_6
    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_7
    add-int/lit8 v3, v1, 0x1

    if-ge v3, p2, :cond_9

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 113
    .local v2, "low":I
    :goto_1
    const v3, 0xdbff

    if-gt v0, v3, :cond_8

    const v3, 0xdc00

    if-lt v2, v3, :cond_8

    if-le v2, v8, :cond_a

    .line 115
    :cond_8
    add-long/2addr v4, v10

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "low":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    .restart local v2    # "low":I
    :cond_a
    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    .line 121
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 126
    .end local v0    # "c":I
    .end local v2    # "low":I
    :cond_b
    return-wide v4
.end method
