.class final synthetic Lcom/google/android/gms/common/api/internal/zabz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

.field private final zab:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;Landroid/os/IBinder;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabz;->zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabz;->zab:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabz;->zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabz;->zab:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->zac(Landroid/os/IBinder;)V

    return-void
.end method
