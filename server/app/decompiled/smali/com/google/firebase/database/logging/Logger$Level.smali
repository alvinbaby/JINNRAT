.class public final enum Lcom/google/firebase/database/logging/Logger$Level;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/firebase/database/logging/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum ERROR:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum INFO:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum NONE:Lcom/google/firebase/database/logging/Logger$Level;

.field public static final enum WARN:Lcom/google/firebase/database/logging/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/google/firebase/database/logging/Logger$Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

    .line 26
    new-instance v0, Lcom/google/firebase/database/logging/Logger$Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    .line 27
    new-instance v0, Lcom/google/firebase/database/logging/Logger$Level;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->WARN:Lcom/google/firebase/database/logging/Logger$Level;

    .line 28
    new-instance v0, Lcom/google/firebase/database/logging/Logger$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->ERROR:Lcom/google/firebase/database/logging/Logger$Level;

    .line 29
    new-instance v0, Lcom/google/firebase/database/logging/Logger$Level;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/logging/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->NONE:Lcom/google/firebase/database/logging/Logger$Level;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/firebase/database/logging/Logger$Level;

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->WARN:Lcom/google/firebase/database/logging/Logger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->ERROR:Lcom/google/firebase/database/logging/Logger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->NONE:Lcom/google/firebase/database/logging/Logger$Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/firebase/database/logging/Logger$Level;->$VALUES:[Lcom/google/firebase/database/logging/Logger$Level;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/google/firebase/database/logging/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/firebase/database/logging/Logger$Level;->$VALUES:[Lcom/google/firebase/database/logging/Logger$Level;

    invoke-virtual {v0}, [Lcom/google/firebase/database/logging/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method
