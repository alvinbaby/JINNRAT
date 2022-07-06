.class Lcom/google/firebase/database/tubesock/WebSocketReceiver;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# instance fields
.field private eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .locals 1
    .param p1, "websocket"    # Lcom/google/firebase/database/tubesock/WebSocket;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 28
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 29
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 30
    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    .line 36
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 37
    return-void
.end method

.method private appendBytes(ZB[B)V
    .locals 3
    .param p1, "fin"    # Z
    .param p2, "opcode"    # B
    .param p3, "data"    # [B

    .prologue
    .line 101
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0, p3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handlePing([B)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "PING must not fragment across frames"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 109
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Failed to continue outstanding frame"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-nez v1, :cond_4

    if-nez p2, :cond_4

    .line 112
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-nez v1, :cond_5

    .line 116
    invoke-static {p2}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory;->builder(B)Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v1, p3}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->appendBytes([B)Z

    move-result v1

    if-nez v1, :cond_6

    .line 119
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Failed to decode frame"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_6
    if-eqz p1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v1}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;

    move-result-object v0

    .line 122
    .local v0, "message":Lcom/google/firebase/database/tubesock/WebSocketMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    .line 124
    if-nez v0, :cond_7

    .line 125
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Failed to decode whole message"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onMessage(Lcom/google/firebase/database/tubesock/WebSocketMessage;)V

    goto :goto_0
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/firebase/database/tubesock/WebSocketException;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stopit()V

    .line 169
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 170
    return-void
.end method

.method private handlePing([B)V
    .locals 2
    .param p1, "payload"    # [B

    .prologue
    .line 135
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->pong([B)V

    .line 140
    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseLong([BI)J
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 144
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 156
    return p3
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method run()V
    .locals 18

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v13}, Lcom/google/firebase/database/tubesock/WebSocket;->getEventHandler()Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 45
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    if-nez v13, :cond_a

    .line 47
    const/4 v6, 0x0

    .line 48
    .local v6, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v13

    add-int/2addr v6, v13

    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_1

    const/4 v3, 0x1

    .line 50
    .local v3, "fin":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    and-int/lit8 v13, v13, 0x70

    if-eqz v13, :cond_2

    const/4 v9, 0x1

    .line 51
    .local v9, "rsv":Z
    :goto_2
    if-eqz v9, :cond_3

    .line 52
    new-instance v13, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v14, "Invalid frame received"

    invoke-direct {v13, v14}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 89
    .end local v3    # "fin":Z
    .end local v9    # "rsv":Z
    :catch_0
    move-exception v12

    .line 90
    .local v12, "sto":Ljava/net/SocketTimeoutException;
    goto :goto_0

    .line 49
    .end local v12    # "sto":Ljava/net/SocketTimeoutException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 50
    .restart local v3    # "fin":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 54
    .restart local v9    # "rsv":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    and-int/lit8 v13, v13, 0xf

    int-to-byte v7, v13

    .line 55
    .local v7, "opcode":B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v13

    add-int/2addr v6, v13

    .line 56
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x1

    aget-byte v5, v13, v14

    .line 57
    .local v5, "length":B
    const-wide/16 v10, 0x0

    .line 58
    .local v10, "payload_length":J
    const/16 v13, 0x7e

    if-ge v5, v13, :cond_5

    .line 59
    int-to-long v10, v5

    .line 72
    :cond_4
    :goto_3
    long-to-int v13, v10

    new-array v8, v13, [B

    .line 73
    .local v8, "payload":[B
    const/4 v13, 0x0

    long-to-int v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    .line 74
    const/16 v13, 0x8

    if-ne v7, v13, :cond_7

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v13}, Lcom/google/firebase/database/tubesock/WebSocket;->onCloseOpReceived()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 91
    .end local v3    # "fin":Z
    .end local v5    # "length":B
    .end local v7    # "opcode":B
    .end local v8    # "payload":[B
    .end local v9    # "rsv":Z
    .end local v10    # "payload_length":J
    :catch_1
    move-exception v4

    .line 92
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v13, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v14, "IO Error"

    invoke-direct {v13, v14, v4}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_0

    .line 60
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v3    # "fin":Z
    .restart local v5    # "length":B
    .restart local v7    # "opcode":B
    .restart local v9    # "rsv":Z
    .restart local v10    # "payload_length":J
    :cond_5
    const/16 v13, 0x7e

    if-ne v5, v13, :cond_6

    .line 61
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v13

    add-int/2addr v6, v13

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v14, 0x2

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-long v14, v13

    const/16 v13, 0x8

    shl-long/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/16 v16, 0x3

    aget-byte v13, v13, v16

    and-int/lit16 v13, v13, 0xff

    int-to-long v0, v13

    move-wide/from16 v16, v0

    or-long v10, v14, v16

    goto :goto_3

    .line 63
    :cond_6
    const/16 v13, 0x7f

    if-ne v5, v13, :cond_4

    .line 67
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v14}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v13

    add-int/2addr v6, v13

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    add-int/lit8 v14, v6, -0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->parseLong([BI)J

    move-result-wide v10

    goto :goto_3

    .line 76
    .restart local v8    # "payload":[B
    :cond_7
    const/16 v13, 0xa

    if-eq v7, v13, :cond_0

    .line 78
    const/4 v13, 0x1

    if-eq v7, v13, :cond_8

    const/4 v13, 0x2

    if-eq v7, v13, :cond_8

    const/16 v13, 0x9

    if-eq v7, v13, :cond_8

    if-nez v7, :cond_9

    .line 83
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->appendBytes(ZB[B)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 93
    .end local v3    # "fin":Z
    .end local v5    # "length":B
    .end local v7    # "opcode":B
    .end local v8    # "payload":[B
    .end local v9    # "rsv":Z
    .end local v10    # "payload_length":J
    :catch_2
    move-exception v2

    .line 94
    .local v2, "e":Lcom/google/firebase/database/tubesock/WebSocketException;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_0

    .line 86
    .end local v2    # "e":Lcom/google/firebase/database/tubesock/WebSocketException;
    .restart local v3    # "fin":Z
    .restart local v5    # "length":B
    .restart local v7    # "opcode":B
    .restart local v8    # "payload":[B
    .restart local v9    # "rsv":Z
    .restart local v10    # "payload_length":J
    :cond_9
    :try_start_2
    new-instance v13, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported opcode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    .end local v3    # "fin":Z
    .end local v5    # "length":B
    .end local v6    # "offset":I
    .end local v7    # "opcode":B
    .end local v8    # "payload":[B
    .end local v9    # "rsv":Z
    .end local v10    # "payload_length":J
    :cond_a
    return-void
.end method

.method setInput(Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/DataInputStream;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 41
    return-void
.end method

.method stopit()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    .line 161
    return-void
.end method
