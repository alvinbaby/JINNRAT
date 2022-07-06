.class public final Lcom/google/android/gms/common/api/internal/zabe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field private static final zaa:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/base/zao;->zaa()Lcom/google/android/gms/internal/base/zal;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    move-object v1, v2

    move-object v2, v1

    const-string v3, "GAC_Executor"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    const/4 v3, 0x2

    move-object v4, v1

    const/4 v5, 0x2

    .line 2
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/base/zal;->zab(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zaa()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
