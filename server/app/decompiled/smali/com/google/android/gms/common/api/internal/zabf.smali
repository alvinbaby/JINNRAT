.class final synthetic Lcom/google/android/gms/common/api/internal/zabf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final zaa:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabf;->zaa:Landroid/os/Handler;

    return-void
.end method

.method static zaa(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 4

    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabf;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Landroid/os/Handler;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabf;->zaa:Landroid/os/Handler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    return-void
.end method
