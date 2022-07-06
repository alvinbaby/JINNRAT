.class Lcom/google/firebase/database/tubesock/WebSocketWriter$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/tubesock/WebSocketWriter;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/tubesock/WebSocketWriter;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/tubesock/WebSocketWriter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;->this$0:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;->this$0:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-static {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->access$000(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V

    .line 48
    return-void
.end method
