.class Lcom/google/firebase/storage/CancelException;
.super Ljava/io/IOException;
.source "com.google.firebase:firebase-storage@@19.0.0"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "The operation was canceled."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
