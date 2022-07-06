.class final Lcom/google/android/gms/common/api/internal/zaay;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/zaaz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 1
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaaz;

    move-object v0, v1

    move-object v1, v0

    if-nez v1, :cond_0

    .line 2
    :goto_0
    return-void

    .line 1
    :cond_0
    move-object v1, v0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaz;->zah(Lcom/google/android/gms/common/api/internal/zaaz;)V

    goto :goto_0
.end method
