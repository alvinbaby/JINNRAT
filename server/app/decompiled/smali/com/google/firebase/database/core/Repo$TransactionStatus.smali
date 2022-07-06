.class final enum Lcom/google/firebase/database/core/Repo$TransactionStatus;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/core/Repo$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 711
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 716
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "RUN"

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 719
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 722
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 725
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "SENT_NEEDS_ABORT"

    invoke-direct {v0, v1, v7}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 727
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "NEEDS_ABORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 710
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/firebase/database/core/Repo$TransactionStatus;

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->$VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

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
    .line 710
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 710
    const-class v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->$VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/Repo$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object v0
.end method
