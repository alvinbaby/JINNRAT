.class public Lcom/google/android/gms/common/internal/LibraryVersion;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzb:Lcom/google/android/gms/common/internal/LibraryVersion;


# instance fields
.field private zzc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v1, Lcom/google/android/gms/common/internal/GmsLogger;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "LibraryVersion"

    const-string v3, ""

    .line 1
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v1, Lcom/google/android/gms/common/internal/LibraryVersion;

    move-object v0, v1

    move-object v1, v0

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/common/internal/LibraryVersion;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, v2

    move-object v2, v1

    .line 1
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-object v0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v10, v1

    const-string v11, "Please provide a valid libraryName"

    .line 1
    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v1

    .line 2
    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v1

    .line 3
    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    .line 15
    :goto_0
    return-object v0

    .line 3
    :cond_0
    new-instance v10, Ljava/util/Properties;

    move-object v2, v10

    move-object v10, v2

    .line 4
    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    const/4 v10, 0x1

    :try_start_0
    new-array v10, v10, [Ljava/lang/Object;

    move-object v3, v10

    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    const-class v10, Lcom/google/android/gms/common/internal/LibraryVersion;

    const-string v11, "/%s.properties"

    move-object v12, v3

    .line 5
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual {v10, v11}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    if-eqz v10, :cond_3

    move-object v10, v2

    move-object v11, v4

    .line 7
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    move-object v10, v2

    const-string v11, "version"

    const/4 v12, 0x0

    .line 8
    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    move-object v3, v10

    :try_start_2
    sget-object v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    move-object v2, v10

    const-string v10, "LibraryVersion"

    move-object v5, v10

    move-object v10, v1

    .line 9
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v6, v10

    add-int/lit8 v6, v6, 0xc

    move-object v10, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    move v10, v6

    move v11, v7

    add-int/2addr v10, v11

    move v6, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v7, v10

    move-object v10, v7

    move v11, v6

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v7

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v7

    const-string v11, " version is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v7

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v2

    move-object v11, v5

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v3

    move-object v2, v10

    :goto_1
    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v4

    .line 12
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    :goto_2
    move-object v10, v2

    if-nez v10, :cond_2

    sget-object v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v11, "LibraryVersion"

    const-string v12, ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"

    .line 14
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "UNKNOWN"

    move-object v2, v10

    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v1

    move-object v12, v2

    .line 15
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v10, v2

    move-object v0, v10

    goto/16 :goto_0

    :cond_3
    :try_start_3
    sget-object v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    move-object v3, v10

    const-string v10, "LibraryVersion"

    move-object v5, v10

    const-string v10, "Failed to get app version for libraryName: "

    move-object v2, v10

    move-object v10, v1

    .line 10
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    move v10, v7

    if-eqz v10, :cond_4

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    :goto_3
    move-object v10, v3

    move-object v11, v5

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object v2, v10

    goto :goto_1

    :cond_4
    new-instance v10, Ljava/lang/String;

    move-object v6, v10

    move-object v10, v6

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v6

    move-object v2, v10

    goto :goto_3

    :catch_0
    move-exception v10

    move-object v2, v10

    const/4 v10, 0x0

    move-object v3, v10

    const/4 v10, 0x0

    move-object v4, v10

    :goto_4
    :try_start_4
    sget-object v10, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    move-object v6, v10

    const-string v10, "LibraryVersion"

    move-object v7, v10

    const-string v10, "Failed to get app version for libraryName: "

    move-object v5, v10

    move-object v10, v1

    .line 11
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v9, v10

    move v10, v9

    if-eqz v10, :cond_6

    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    :goto_5
    move-object v10, v6

    move-object v11, v7

    move-object v12, v5

    move-object v13, v2

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v10, v4

    if-eqz v10, :cond_7

    move-object v10, v4

    .line 12
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v3

    move-object v2, v10

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    move-object v0, v10

    const/4 v10, 0x0

    move-object v1, v10

    :goto_6
    move-object v10, v1

    if-eqz v10, :cond_5

    move-object v10, v1

    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    move-object v10, v0

    .line 13
    throw v10

    :catch_1
    move-exception v10

    move-object v2, v10

    const/4 v10, 0x0

    move-object v3, v10

    goto :goto_4

    :catchall_1
    move-exception v10

    move-object v0, v10

    move-object v10, v4

    move-object v1, v10

    goto :goto_6

    :catch_2
    move-exception v10

    move-object v2, v10

    goto :goto_4

    :catchall_2
    move-exception v10

    move-object v0, v10

    move-object v10, v4

    move-object v1, v10

    goto :goto_6

    :cond_6
    :try_start_5
    new-instance v10, Ljava/lang/String;

    move-object v8, v10

    move-object v10, v8

    move-object v11, v5

    .line 11
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v10, v8

    move-object v5, v10

    goto :goto_5

    :cond_7
    move-object v10, v3

    move-object v2, v10

    goto/16 :goto_2
.end method
