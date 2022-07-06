.class public interface abstract Lcom/google/firebase/database/core/Platform;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# virtual methods
.method public abstract createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
.end method

.method public abstract getPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getSSLCacheDirectory()Ljava/io/File;
.end method

.method public abstract getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;
.end method

.method public abstract newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;
.end method

.method public abstract newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Context;",
            "Lcom/google/firebase/database/logging/Logger$Level;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/database/logging/Logger;"
        }
    .end annotation
.end method

.method public abstract newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
.end method

.method public abstract newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;
.end method
