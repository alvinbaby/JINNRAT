.class public Lcom/google/firebase/database/core/utilities/OffsetClock;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Clock;


# instance fields
.field private final baseClock:Lcom/google/firebase/database/core/utilities/Clock;

.field private offset:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/utilities/Clock;J)V
    .locals 2
    .param p1, "baseClock"    # Lcom/google/firebase/database/core/utilities/Clock;
    .param p2, "offset"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    .line 22
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->baseClock:Lcom/google/firebase/database/core/utilities/Clock;

    .line 23
    iput-wide p2, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    .line 24
    return-void
.end method


# virtual methods
.method public millis()J
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->baseClock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-interface {v0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    .line 28
    return-void
.end method
