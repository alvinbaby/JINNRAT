.class final Lcom/google/android/gms/common/api/internal/zabi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:I

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabl;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabi;->zab:Lcom/google/android/gms/common/api/internal/zabl;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

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

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabi;->zab:Lcom/google/android/gms/common/api/internal/zabl;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zabi;->zaa:I

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zabl;->zaz(Lcom/google/android/gms/common/api/internal/zabl;I)V

    return-void
.end method
