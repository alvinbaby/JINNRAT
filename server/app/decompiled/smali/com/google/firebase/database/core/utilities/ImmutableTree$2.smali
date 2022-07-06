.class Lcom/google/firebase/database/core/utilities/ImmutableTree$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/utilities/ImmutableTree;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .prologue
    .line 302
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree$2;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$2;"
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;->this$0:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree$2;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$2;"
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "accum"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "TT;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/google/firebase/database/core/utilities/ImmutableTree$2;, "Lcom/google/firebase/database/core/utilities/ImmutableTree$2;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;->val$list:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method
