.class public interface abstract Lcom/google/firebase/storage/network/connection/HttpURLConnectionFactory;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"


# virtual methods
.method public abstract createInstance(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
