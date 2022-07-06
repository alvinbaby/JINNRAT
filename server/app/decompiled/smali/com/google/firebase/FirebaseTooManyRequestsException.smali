.class public Lcom/google/firebase/FirebaseTooManyRequestsException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-common@@19.0.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
