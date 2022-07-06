.class public interface abstract Lcom/google/firebase/database/ChildEventListener;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# virtual methods
.method public abstract onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
