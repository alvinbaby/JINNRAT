.class Lsigma/male/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lsigma/male/RequestNetwork$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity;->initialize(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lsigma/male/MainActivity$21;->this$0:Lsigma/male/MainActivity;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lsigma/male/MainActivity$21;->this$0:Lsigma/male/MainActivity;

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BTgjTEswdBJYSjt0CUMYITwjDVE7ICNfVjAgZnlXdTcpQ0w8OjNI"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lsigma/male/MainActivity$21;->this$0:Lsigma/male/MainActivity;

    invoke-virtual {v0}, Lsigma/male/MainActivity;->finish()V

    .line 434
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    return-void
.end method
