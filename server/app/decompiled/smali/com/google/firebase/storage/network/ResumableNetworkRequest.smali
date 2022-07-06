.class abstract Lcom/google/firebase/storage/network/ResumableNetworkRequest;
.super Lcom/google/firebase/storage/network/NetworkRequest;
.source "com.google.firebase:firebase-storage@@19.0.0"


# static fields
.field static final COMMAND:Ljava/lang/String; = "X-Goog-Upload-Command"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final CONTENT_TYPE:Ljava/lang/String; = "X-Goog-Upload-Header-Content-Type"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final OFFSET:Ljava/lang/String; = "X-Goog-Upload-Offset"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final PROTOCOL:Ljava/lang/String; = "X-Goog-Upload-Protocol"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .param p1, "gsUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "app"    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/network/NetworkRequest;-><init>(Landroid/net/Uri;Lcom/google/firebase/FirebaseApp;)V

    .line 31
    return-void
.end method
