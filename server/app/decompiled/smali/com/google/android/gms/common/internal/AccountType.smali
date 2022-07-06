.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final GOOGLE:Ljava/lang/String; = "com.google"
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zza:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "com.google"

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x1

    const-string v3, "com.google.work"

    aput-object v3, v1, v2

    move-object v1, v0

    const/4 v2, 0x2

    const-string v3, "cn.google"

    aput-object v3, v1, v2

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/AccountType;->zza:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
