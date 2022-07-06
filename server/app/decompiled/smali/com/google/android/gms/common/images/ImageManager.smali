.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final zaa:Ljava/lang/Object;

.field private static zab:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static zac:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final zad:Landroid/content/Context;

.field private final zae:Landroid/os/Handler;

.field private final zaf:Ljava/util/concurrent/ExecutorService;

.field private final zag:Lcom/google/android/gms/internal/base/zak;

.field private final zah:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/images/zag;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zaj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v1, Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    move-object v0, v1

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zad:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/base/zap;

    move-object v1, v3

    move-object v3, v1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zae:Landroid/os/Handler;

    move-object v3, v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/base/zao;->zaa()Lcom/google/android/gms/internal/base/zal;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    .line 4
    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/base/zal;->zaa(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zaf:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/base/zak;

    move-object v1, v3

    move-object v3, v1

    invoke-direct {v3}, Lcom/google/android/gms/internal/base/zak;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zag:Lcom/google/android/gms/internal/base/zak;

    new-instance v3, Ljava/util/HashMap;

    move-object v1, v3

    move-object v3, v1

    .line 6
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zah:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    move-object v1, v3

    move-object v3, v1

    .line 7
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zai:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    move-object v1, v3

    move-object v3, v1

    .line 8
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/common/images/ImageManager;->zaj:Ljava/util/Map;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    sget-object v2, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/common/images/ImageManager;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    move-object v2, v1

    sput-object v2, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    :cond_0
    sget-object v2, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zah:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zad:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zag:Lcom/google/android/gms/internal/base/zak;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zaj:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zai:Ljava/util/Map;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zag()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zah()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic zai(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zaf:Ljava/util/concurrent/ExecutorService;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic zaj(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageManager;->zae:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public loadImage(Landroid/widget/ImageView;I)V
    .locals 7
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v4, Lcom/google/android/gms/common/images/zae;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;I)V

    move-object v4, v0

    move-object v5, v3

    .line 2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 7
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/google/android/gms/common/images/zae;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    .line 3
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    move-object v4, v0

    move-object v5, v3

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Lcom/google/android/gms/common/images/zae;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    .line 5
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    move-object v5, v4

    move v6, v3

    iput v6, v5, Lcom/google/android/gms/common/images/zag;->zab:I

    move-object v5, v0

    move-object v6, v4

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/google/android/gms/common/images/zaf;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    .line 7
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/images/zaf;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    move-object v4, v0

    move-object v5, v3

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .locals 8
    .param p1    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Lcom/google/android/gms/common/images/zaf;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    .line 9
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/images/zaf;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    move-object v5, v4

    move v6, v3

    iput v6, v5, Lcom/google/android/gms/common/images/zag;->zab:I

    move-object v5, v0

    move-object v6, v4

    .line 10
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/images/ImageManager;->zaa(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/images/zag;)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    const-string v3, "ImageManager.loadImage() must be called in the main thread"

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/common/images/zab;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    .line 2
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/images/zab;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V

    move-object v3, v2

    .line 3
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
