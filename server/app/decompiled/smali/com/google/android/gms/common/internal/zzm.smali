.class public final Lcom/google/android/gms/common/internal/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static final zzf:Landroid/net/Uri;


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:I

.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v1, Landroid/net/Uri$Builder;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    move-object v1, v0

    const-string v2, "content"

    .line 2
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.google.android.gms.chimera"

    .line 3
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/internal/zzm;->zzf:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 5

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    move-object v3, v1

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/internal/zzm;->zze:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    const-string v6, "com.google.android.gms"

    move v7, v3

    const/4 v8, 0x0

    .line 2
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v1

    .line 3
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    move-object v5, v2

    .line 4
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/android/gms/common/internal/zzm;->zze:Z

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

    .line 5
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/internal/zzm;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/internal/zzm;

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    move-object v3, v1

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/zzm;->zze:Z

    move-object v3, v1

    iget-boolean v3, v3, Lcom/google/android/gms/common/internal/zzm;->zze:Z

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    move-object v0, p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x4

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/internal/zzm;->zze:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public final zza()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final zzb()Landroid/content/ComponentName;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    move-object v0, v1

    return-object v0
.end method

.method public final zzc()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/internal/zzm;->zzd:I

    move v0, v1

    return v0
.end method

.method public final zzd(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/gms/common/internal/zzm;->zze:Z

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    move-object v2, v4

    move-object v4, v2

    .line 1
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v4, v2

    const-string v5, "serviceActionBundleKey"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 3
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/common/internal/zzm;->zzf:Landroid/net/Uri;

    const-string v6, "serviceIntentCall"

    const/4 v7, 0x0

    move-object v8, v2

    .line 4
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move-object v1, v4

    :goto_1
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    .line 7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const-string v4, "Dynamic lookup for intent failed for action: "

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :goto_2
    const-string v4, "ConnectionStatusConfig"

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_0
    :goto_3
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v0, v4

    :goto_4
    move-object v4, v0

    move-object v0, v4

    .line 8
    :goto_5
    return-object v0

    .line 7
    :cond_1
    new-instance v4, Landroid/content/Intent;

    move-object v1, v4

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzm;->zza:Ljava/lang/String;

    .line 8
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    :cond_2
    new-instance v4, Ljava/lang/String;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v3

    .line 7
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v4, v1

    const-string v5, "serviceResponseIntentKey"

    .line 6
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v1, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/content/Intent;

    move-object v1, v4

    move-object v4, v1

    .line 9
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzm;->zzc:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    move-object v0, v4

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v1, v4

    move-object v4, v1

    .line 5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    const/16 v6, 0x22

    add-int/lit8 v5, v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "Dynamic intent resolution failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v4, "ConnectionStatusConfig"

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v4, 0x0

    move-object v1, v4

    goto/16 :goto_0
.end method
