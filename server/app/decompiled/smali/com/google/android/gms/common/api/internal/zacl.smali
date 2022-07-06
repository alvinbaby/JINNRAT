.class final Lcom/google/android/gms/common/api/internal/zacl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zacl;->zaa:Lcom/google/android/gms/common/api/internal/zaco;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacl;->zaa:Lcom/google/android/gms/common/api/internal/zaco;

    move-object v0, v2

    move-object v2, v0

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zaco;->zae(Lcom/google/android/gms/common/api/internal/zaco;)Lcom/google/android/gms/common/api/internal/zacn;

    move-result-object v2

    move-object v0, v2

    .line 1
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/zacn;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
