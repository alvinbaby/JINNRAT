.class Lsigma/male/MainActivity$24;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity;->_remicbje(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsigma/male/MainActivity;


# direct methods
.method constructor <init>(Lsigma/male/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/MainActivity$24;->this$0:Lsigma/male/MainActivity;

    .line 917
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lsigma/male/MainActivity$24;->this$0:Lsigma/male/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lsigma/male/MainActivity$24;->this$0:Lsigma/male/MainActivity;

    new-instance v1, Lsigma/male/MainActivity$24$1;

    invoke-direct {v1, p0}, Lsigma/male/MainActivity$24$1;-><init>(Lsigma/male/MainActivity$24;)V

    invoke-virtual {v0, v1}, Lsigma/male/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method
