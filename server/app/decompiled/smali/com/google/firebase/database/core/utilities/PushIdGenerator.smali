.class public Lcom/google/firebase/database/core/utilities/PushIdGenerator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PUSH_CHARS:Ljava/lang/String; = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->$assertionsDisabled:Z

    .line 24
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generatePushChildName(J)Ljava/lang/String;
    .locals 10
    .param p0, "now"    # J

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0xc

    .line 31
    const-class v5, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-enter v5

    :try_start_0
    sget-wide v6, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    cmp-long v4, p0, v6

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 32
    .local v0, "duplicateTime":Z
    :goto_0
    sput-wide p0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    .line 34
    const/16 v4, 0x8

    new-array v3, v4, [C

    .line 35
    .local v3, "timeStampChars":[C
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 37
    const-string v4, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v6, 0x40

    rem-long v6, p0, v6

    long-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    .line 38
    const-wide/16 v6, 0x40

    div-long/2addr p0, v6

    .line 36
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 31
    .end local v0    # "duplicateTime":Z
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/StringBuilder;
    .end local v3    # "timeStampChars":[C
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    .restart local v0    # "duplicateTime":Z
    .restart local v1    # "i":I
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    .restart local v3    # "timeStampChars":[C
    :cond_1
    sget-boolean v4, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v0    # "duplicateTime":Z
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/StringBuilder;
    .end local v3    # "timeStampChars":[C
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 42
    .restart local v0    # "duplicateTime":Z
    .restart local v1    # "i":I
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    .restart local v3    # "timeStampChars":[C
    :cond_2
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 44
    if-nez v0, :cond_3

    .line 45
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_4

    .line 46
    sget-object v4, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v6, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aput v6, v4, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->incrementArray()V

    .line 51
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_5

    .line 52
    const-string v4, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    sget-object v6, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 54
    :cond_5
    sget-boolean v4, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v4, v9, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 55
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4
.end method

.method private static incrementArray()V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0xb

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 60
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v1, v1, v0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    .line 61
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 66
    :cond_0
    return-void

    .line 64
    :cond_1
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
