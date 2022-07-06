.class final enum Lcom/google/firebase/database/tubesock/WebSocket$State;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/tubesock/WebSocket$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 55
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 56
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 57
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 58
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->$VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/tubesock/WebSocket$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/tubesock/WebSocket$State;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->$VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v0}, [Lcom/google/firebase/database/tubesock/WebSocket$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-object v0
.end method
