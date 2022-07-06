.class final Lcom/google/android/gms/common/api/internal/zabm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/ApiKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ApiKey",
            "<*>;"
        }
    .end annotation
.end field

.field private final zab:Lcom/google/android/gms/common/Feature;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/zabg;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/api/internal/ApiKey;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/Feature;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/Feature;

    move-object v0, v1

    return-object v0
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

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/api/internal/zabm;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/api/internal/zabm;

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/Feature;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/Feature;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    move-object v0, p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/Feature;

    aput-object v4, v2, v3

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "key"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "feature"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
