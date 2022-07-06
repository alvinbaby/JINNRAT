.class Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleEntry"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final cookie:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final runnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cookie"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    .line 77
    iput-object p3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 87
    instance-of v2, p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    .line 91
    .local v0, "other":Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
    iget-object v2, v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCookie()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
