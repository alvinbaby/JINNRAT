.class public Lcom/google/firebase/database/connection/RangeMerge;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# instance fields
.field private final optExclusiveStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optInclusiveEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final snap:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p3, "snap"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "optExclusiveStart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "optInclusiveEnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/database/connection/RangeMerge;->optExclusiveStart:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/google/firebase/database/connection/RangeMerge;->optInclusiveEnd:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/google/firebase/database/connection/RangeMerge;->snap:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getOptExclusiveStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/firebase/database/connection/RangeMerge;->optExclusiveStart:Ljava/util/List;

    return-object v0
.end method

.method public getOptInclusiveEnd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/firebase/database/connection/RangeMerge;->optInclusiveEnd:Ljava/util/List;

    return-object v0
.end method

.method public getSnap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/firebase/database/connection/RangeMerge;->snap:Ljava/lang/Object;

    return-object v0
.end method
