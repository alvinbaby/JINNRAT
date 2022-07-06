.class final Lcom/google/android/gms/common/api/internal/zacm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/signin/internal/zak;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacm;->zab:Lcom/google/android/gms/common/api/internal/zaco;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zacm;->zaa:Lcom/google/android/gms/signin/internal/zak;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacm;->zab:Lcom/google/android/gms/common/api/internal/zaco;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zacm;->zaa:Lcom/google/android/gms/signin/internal/zak;

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zaco;->zaf(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
