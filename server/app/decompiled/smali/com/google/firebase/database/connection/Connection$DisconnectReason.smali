.class public final enum Lcom/google/firebase/database/connection/Connection$DisconnectReason;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/connection/Connection$DisconnectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

.field public static final enum OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

.field public static final enum SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const-string v1, "SERVER_RESET"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    .line 25
    new-instance v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->$VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->$VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-object v0
.end method
