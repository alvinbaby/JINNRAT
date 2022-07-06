.class public final Lcom/google/android/gms/common/internal/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static final zza:Landroid/net/Uri;

.field private static final zzb:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "https://plus.google.com/"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzs;->zza:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/gms/common/internal/zzs;->zza:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "circles"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "find"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzs;->zzb:Landroid/net/Uri;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    move-object v0, p0

    const-string v2, "package"

    const-string v3, "com.google.android.gms"

    const/4 v4, 0x0

    .line 1
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Landroid/content/Intent;

    move-object v1, v2

    move-object v2, v1

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/content/Intent;

    move-object v0, v3

    move-object v3, v0

    const-string v4, "android.intent.action.VIEW"

    .line 1
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "market://details"

    .line 2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "com.google.android.gms"

    .line 4
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string v4, "pcampaignid"

    move-object v5, v1

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    :cond_0
    move-object v3, v0

    move-object v4, v2

    .line 7
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object v3, v0

    const-string v4, "com.android.vending"

    .line 9
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v3, v0

    const/high16 v4, 0x80000

    .line 10
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public static zzc()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v1, Landroid/content/Intent;

    move-object v0, v1

    move-object v1, v0

    const-string v2, "com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION"

    .line 1
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    const-string v2, "com.google.android.wearable.app"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method
