.class Lcom/google/firebase/database/tubesock/WebSocketWriter;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;

.field private closeSent:Z

.field private final innerThread:Ljava/lang/Thread;

.field private pendingBuffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;Ljava/lang/String;I)V
    .locals 4
    .param p1, "websocket"    # Lcom/google/firebase/database/tubesock/WebSocket;
    .param p2, "threadBaseName"    # Ljava/lang/String;
    .param p3, "clientId"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    .line 34
    iput-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    .line 35
    iput-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    .line 42
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;-><init>(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    .line 51
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Writer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/tubesock/WebSocketWriter;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->runWriter()V

    return-void
.end method

.method private frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "opcode"    # B
    .param p2, "masking"    # Z
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v10, 0xffff

    const/16 v9, 0x7e

    .line 61
    const/4 v2, 0x2

    .line 62
    .local v2, "headerLength":I
    if-eqz p2, :cond_0

    .line 63
    add-int/lit8 v2, v2, 0x4

    .line 65
    :cond_0
    array-length v4, p3

    .line 66
    .local v4, "length":I
    if-ge v4, v9, :cond_2

    .line 73
    :goto_0
    array-length v8, p3

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 75
    .local v1, "frame":Ljava/nio/ByteBuffer;
    const/16 v0, -0x80

    .line 76
    .local v0, "fin":B
    or-int v8, v0, p1

    int-to-byte v7, v8

    .line 77
    .local v7, "startByte":B
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    if-ge v4, v9, :cond_4

    .line 82
    if-eqz p2, :cond_1

    .line 83
    or-int/lit16 v4, v4, 0x80

    .line 85
    :cond_1
    int-to-byte v8, v4

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    :goto_1
    if-eqz p2, :cond_8

    .line 107
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->generateMask()[B

    move-result-object v6

    .line 108
    .local v6, "mask":[B
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, p3

    if-ge v3, v8, :cond_8

    .line 111
    aget-byte v8, p3, v3

    rem-int/lit8 v9, v3, 0x4

    aget-byte v9, v6, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 68
    .end local v0    # "fin":B
    .end local v1    # "frame":Ljava/nio/ByteBuffer;
    .end local v3    # "i":I
    .end local v6    # "mask":[B
    .end local v7    # "startByte":B
    :cond_2
    if-gt v4, v10, :cond_3

    .line 69
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 71
    :cond_3
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 86
    .restart local v0    # "fin":B
    .restart local v1    # "frame":Ljava/nio/ByteBuffer;
    .restart local v7    # "startByte":B
    :cond_4
    if-gt v4, v10, :cond_6

    .line 87
    const/16 v5, 0x7e

    .line 88
    .local v5, "length_field":I
    if-eqz p2, :cond_5

    .line 89
    or-int/lit16 v5, v5, 0x80

    .line 91
    :cond_5
    int-to-byte v8, v5

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 93
    int-to-short v8, v4

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 95
    .end local v5    # "length_field":I
    :cond_6
    const/16 v5, 0x7f

    .line 96
    .restart local v5    # "length_field":I
    if-eqz p2, :cond_7

    .line 97
    or-int/lit16 v5, v5, 0x80

    .line 99
    :cond_7
    int-to-byte v8, v5

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 115
    .end local v5    # "length_field":I
    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 116
    return-object v1
.end method

.method private generateMask()[B
    .locals 2

    .prologue
    .line 120
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 121
    .local v0, "mask":[B
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 122
    return-object v0
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/firebase/database/tubesock/WebSocketException;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 147
    return-void
.end method

.method private runWriter()V
    .locals 4

    .prologue
    .line 151
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->writeMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "IO Exception"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 155
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->writeMessage()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    .end local v1    # "i":I
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private writeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 138
    .local v0, "msg":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 139
    return-void
.end method


# virtual methods
.method getInnerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized send(BZ[B)V
    .locals 3
    .param p1, "opcode"    # B
    .param p2, "masking"    # Z
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 126
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "frame":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    if-nez v1, :cond_0

    if-eq p1, v2, :cond_1

    .line 128
    :cond_0
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Shouldn\'t be sending"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0    # "frame":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 130
    .restart local v0    # "frame":Ljava/nio/ByteBuffer;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 131
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void
.end method

.method setOutput(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 57
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    .line 58
    return-void
.end method

.method stopIt()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    .line 143
    return-void
.end method
