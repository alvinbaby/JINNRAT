.class Landroidx/activity/ComponentActivity$2;
.super Landroidx/activity/result/ActivityResultRegistry;
.source "ComponentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 26
    .param p2    # Landroidx/activity/result/contract/ActivityResultContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/app/ActivityOptionsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    .line 155
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    .line 156
    invoke-virtual/range {v17 .. v19}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v17

    move-object/from16 v8, v17

    .line 157
    move-object/from16 v17, v8

    if-eqz v17, :cond_0

    .line 158
    new-instance v17, Landroid/os/Handler;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v18, Landroidx/activity/ComponentActivity$2$1;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v8

    invoke-direct/range {v19 .. v22}, Landroidx/activity/ComponentActivity$2$1;-><init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v17

    .line 220
    :goto_0
    return-void

    .line 168
    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-virtual/range {v17 .. v19}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v9, v17

    .line 169
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 170
    move-object/from16 v17, v9

    const-string v18, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 171
    move-object/from16 v17, v9

    const-string v18, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v10, v17

    .line 172
    move-object/from16 v17, v9

    const-string v18, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_1
    const-string v17, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 179
    move-object/from16 v17, v9

    const-string v18, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 181
    move-object/from16 v17, v11

    if-nez v17, :cond_3

    .line 182
    goto :goto_0

    .line 173
    :cond_2
    move-object/from16 v17, v6

    if-eqz v17, :cond_1

    .line 174
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v10, v17

    goto :goto_1

    .line 185
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v17

    .line 186
    move-object/from16 v17, v11

    move-object/from16 v13, v17

    move-object/from16 v17, v13

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v15, v17

    :goto_2
    move/from16 v17, v15

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    move-object/from16 v17, v13

    move/from16 v18, v15

    aget-object v17, v17, v18

    move-object/from16 v16, v17

    .line 187
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    move-object/from16 v17, v0

    move-object/from16 v18, v16

    .line 188
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v20

    .line 187
    invoke-virtual/range {v17 .. v20}, Landroidx/activity/ComponentActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4

    .line 190
    move-object/from16 v17, v12

    move-object/from16 v18, v16

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 186
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 194
    :cond_5
    move-object/from16 v17, v12

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 195
    move-object/from16 v17, v7

    move-object/from16 v18, v12

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 196
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    move/from16 v19, v3

    .line 195
    invoke-static/range {v17 .. v19}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 220
    :cond_6
    :goto_3
    goto/16 :goto_0

    .line 198
    :cond_7
    const-string v17, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 199
    move-object/from16 v17, v9

    const-string v18, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 200
    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroidx/activity/result/IntentSenderRequest;

    move-object/from16 v11, v17

    .line 203
    move-object/from16 v17, v7

    move-object/from16 v18, v11

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v18

    move/from16 v19, v3

    move-object/from16 v20, v11

    .line 204
    invoke-virtual/range {v20 .. v20}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v21

    move-object/from16 v22, v11

    .line 205
    invoke-virtual/range {v22 .. v22}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v24, v10

    .line 203
    invoke-static/range {v17 .. v24}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_4
    goto :goto_3

    .line 206
    :catch_0
    move-exception v17

    move-object/from16 v12, v17

    .line 207
    new-instance v17, Landroid/os/Handler;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v18, Landroidx/activity/ComponentActivity$2$2;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v12

    invoke-direct/range {v19 .. v22}, Landroidx/activity/ComponentActivity$2$2;-><init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v17

    goto :goto_4

    .line 218
    :cond_8
    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move/from16 v19, v3

    move-object/from16 v20, v10

    invoke-static/range {v17 .. v20}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_3
.end method
