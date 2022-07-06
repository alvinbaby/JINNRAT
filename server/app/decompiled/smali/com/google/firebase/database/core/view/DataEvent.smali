.class public Lcom/google/firebase/database/core/view/DataEvent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/view/Event;


# instance fields
.field private final eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field private final eventType:Lcom/google/firebase/database/core/view/Event$EventType;

.field private final prevName:Ljava/lang/String;

.field private final snapshot:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Lcom/google/firebase/database/core/view/Event$EventType;
    .param p2, "eventRegistration"    # Lcom/google/firebase/database/core/EventRegistration;
    .param p3, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p4, "prevName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    .line 35
    iput-object p3, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    .line 36
    iput-object p4, p0, Lcom/google/firebase/database/core/view/DataEvent;->prevName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/core/EventRegistration;->fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V

    .line 64
    return-void
.end method

.method public getEventType()Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 42
    .local v0, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v2, :cond_0

    .line 45
    .end local v0    # "path":Lcom/google/firebase/database/core/Path;
    :goto_0
    return-object v0

    .restart local v0    # "path":Lcom/google/firebase/database/core/Path;
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/database/DataSnapshot;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/DataEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/DataEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    .line 75
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    .line 77
    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
