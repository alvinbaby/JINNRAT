.class Lsigma/male/MainActivity$22;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity;->_getallp()V
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
    iput-object p1, p0, Lsigma/male/MainActivity$22;->this$0:Lsigma/male/MainActivity;

    .line 637
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lsigma/male/MainActivity$22;->this$0:Lsigma/male/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lsigma/male/MainActivity$22;->this$0:Lsigma/male/MainActivity;

    new-instance v1, Lsigma/male/MainActivity$22$1;

    invoke-direct {v1, p0}, Lsigma/male/MainActivity$22$1;-><init>(Lsigma/male/MainActivity$22;)V

    invoke-virtual {v0, v1}, Lsigma/male/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 666
    return-void
.end method
