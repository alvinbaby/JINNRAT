.class public final Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;
.super Ljava/lang/IllegalStateException;
.source "com.google.android.gms:play-services-tasks@@17.2.1"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1
    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static of(Lcom/google/android/gms/tasks/Task;)Ljava/lang/IllegalStateException;
    .locals 7
    .param p0    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<*>;)",
            "Ljava/lang/IllegalStateException;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "DuplicateTaskCompletionException can only be created from completed Task."

    .line 2
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    move-object v0, v4

    .line 7
    :goto_0
    return-object v0

    .line 2
    :cond_0
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_2

    const-string v4, "failure"

    move-object v0, v4

    :goto_1
    new-instance v4, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;

    move-object v2, v4

    move-object v4, v0

    .line 7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "Complete with: "

    move-object v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_2
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v4, v0

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    const/4 v6, 0x7

    add-int/lit8 v5, v5, 0x7

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v3

    const-string v5, "result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_3
    move-object v4, v0

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "cancellation"

    move-object v0, v4

    goto :goto_1

    :cond_4
    const-string v4, "unknown issue"

    move-object v0, v4

    goto :goto_1
.end method
