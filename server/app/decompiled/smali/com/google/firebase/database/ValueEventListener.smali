.class public interface abstract Lcom/google/firebase/database/ValueEventListener;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# virtual methods
.method public abstract onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
