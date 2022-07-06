.class final synthetic Lcom/google/android/gms/common/api/internal/zacf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/util/BiConsumer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/BiConsumer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zacf;->zaa:Lcom/google/android/gms/common/util/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zacf;->zaa:Lcom/google/android/gms/common/util/BiConsumer;

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/common/api/Api$AnyClient;

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
