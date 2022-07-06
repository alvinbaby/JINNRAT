.class public interface abstract Lcom/google/firebase/storage/OnProgressListener;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ProgressT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onProgress(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgressT;)V"
        }
    .end annotation
.end method
