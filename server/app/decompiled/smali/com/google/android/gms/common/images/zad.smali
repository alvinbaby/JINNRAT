.class final Lcom/google/android/gms/common/images/zad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field public final zaa:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 3
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/images/zad;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/images/zad;

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    move-object v0, p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    aput-object v4, v2, v3

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method
