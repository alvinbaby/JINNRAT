.class public Lcom/google/firebase/database/core/view/CancelEvent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/view/Event;


# instance fields
.field private final error:Lcom/google/firebase/database/DatabaseError;

.field private final eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field private final path:Lcom/google/firebase/database/core/Path;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V
    .locals 0
    .param p1, "eventRegistration"    # Lcom/google/firebase/database/core/EventRegistration;
    .param p2, "error"    # Lcom/google/firebase/database/DatabaseError;
    .param p3, "path"    # Lcom/google/firebase/database/core/Path;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/firebase/database/core/view/CancelEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    .line 29
    iput-object p3, p0, Lcom/google/firebase/database/core/view/CancelEvent;->path:Lcom/google/firebase/database/core/Path;

    .line 30
    iput-object p2, p0, Lcom/google/firebase/database/core/view/CancelEvent;->error:Lcom/google/firebase/database/DatabaseError;

    .line 31
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/firebase/database/core/view/CancelEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/CancelEvent;->error:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/EventRegistration;->fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V

    .line 41
    return-void
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/firebase/database/core/view/CancelEvent;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/CancelEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
