.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zza:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "android."

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const-string v3, "com.android."

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const-string v3, "dalvik."

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x3

    const-string v3, "java."

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x4

    const-string v3, "javax."

    aput-object v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/util/CrashUtils;->zza:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 1
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v1

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    const/4 v2, 0x0

    move v0, v2

    return v0

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "CrashUtils"

    const-string v3, "Error adding exception to DropBox!"

    move-object v4, v0

    .line 3
    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method
