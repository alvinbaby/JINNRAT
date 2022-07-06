.class Landroidx/core/provider/FontRequestWorker;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field static final LOCK:Ljava/lang/Object;

.field static final PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/util/Consumer",
            "<",
            "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 60
    const-string v0, "fonts-androidx"

    const/16 v1, 0xa

    const/16 v2, 0x2710

    .line 61
    invoke-static {v0, v1, v2}, Landroidx/core/provider/RequestExecutor;->createDefaultExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "style"    # I

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I
    .locals 7
    .param p0, "fontFamilyResult"    # Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x3

    .line 263
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 287
    :goto_0
    return v3

    .line 266
    :pswitch_0
    const/4 v3, -0x2

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 272
    .local v1, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-nez v5, :cond_2

    .line 273
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 276
    :cond_2
    array-length v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v0, v1, v5

    .line 279
    .local v0, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v2

    .line 280
    .local v2, "resultCode":I
    if-eqz v2, :cond_4

    .line 283
    if-gez v2, :cond_3

    move v2, v3

    .end local v2    # "resultCode":I
    :cond_3
    move v3, v2

    goto :goto_0

    .line 276
    .restart local v2    # "resultCode":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resultCode":I
    :cond_5
    move v3, v4

    .line 287
    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 7
    .param p0, "cacheId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "style"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 232
    sget-object v5, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v5, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 233
    .local v0, "cached":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 234
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v5, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    .line 256
    :goto_0
    return-object v5

    .line 239
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, p2, v5}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 244
    .local v3, "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    invoke-static {v3}, Landroidx/core/provider/FontRequestWorker;->getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I

    move-result v2

    .line 245
    .local v2, "fontFamilyResultStatus":I
    if-eqz v2, :cond_1

    .line 246
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v5, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    goto :goto_0

    .line 240
    .end local v2    # "fontFamilyResultStatus":I
    .end local v3    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    goto :goto_0

    .line 250
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "fontFamilyResultStatus":I
    .restart local v3    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :cond_1
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    .line 249
    invoke-static {p1, v6, v5, p3}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 252
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_2

    .line 253
    sget-object v5, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v5, p0, v4}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v5, v4}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 256
    :cond_2
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v6, -0x3

    invoke-direct {v5, v6}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    goto :goto_0
.end method

.method static requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "style"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Landroidx/core/provider/CallbackWithHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 164
    invoke-static {p1, p2}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "id":Ljava/lang/String;
    sget-object v7, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v7, v3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 166
    .local v0, "cached":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 167
    new-instance v6, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v6, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p4, v6}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 217
    .end local v0    # "cached":Landroid/graphics/Typeface;
    :goto_0
    return-object v0

    .line 171
    .restart local v0    # "cached":Landroid/graphics/Typeface;
    :cond_0
    new-instance v5, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {v5, p4}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Landroidx/core/provider/CallbackWithHandler;)V

    .line 178
    .local v5, "reply":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    sget-object v7, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 179
    :try_start_0
    sget-object v8, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v8, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 180
    .local v4, "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 186
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .restart local v4    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v8, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v8, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    new-instance v1, Landroidx/core/provider/FontRequestWorker$3;

    invoke-direct {v1, v3, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker$3;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    .line 198
    .local v1, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    if-nez p3, :cond_2

    sget-object v2, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 200
    .local v2, "finalExecutor":Ljava/util/concurrent/Executor;
    :goto_1
    new-instance v7, Landroidx/core/provider/FontRequestWorker$4;

    invoke-direct {v7, v3}, Landroidx/core/provider/FontRequestWorker$4;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v7}, Landroidx/core/provider/RequestExecutor;->execute(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V

    move-object v0, v6

    .line 217
    goto :goto_0

    .line 189
    .end local v1    # "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    .end local v2    # "finalExecutor":Ljava/util/concurrent/Executor;
    .end local v4    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v1    # "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    .restart local v4    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    :cond_2
    move-object v2, p3

    .line 198
    goto :goto_1
.end method

.method static requestFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/CallbackWithHandler;II)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroidx/core/provider/CallbackWithHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "style"    # I
    .param p4, "timeoutInMillis"    # I

    .prologue
    .line 102
    invoke-static {p1, p3}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "id":Ljava/lang/String;
    sget-object v5, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v5, v3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 104
    .local v0, "cached":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 105
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v5, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v5}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 134
    .end local v0    # "cached":Landroid/graphics/Typeface;
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "cached":Landroid/graphics/Typeface;
    :cond_0
    const/4 v5, -0x1

    if-ne p4, v5, :cond_1

    .line 112
    invoke-static {v3, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v4

    .line 113
    .local v4, "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    invoke-virtual {p2, v4}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 114
    iget-object v0, v4, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 117
    .end local v4    # "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    :cond_1
    new-instance v2, Landroidx/core/provider/FontRequestWorker$1;

    invoke-direct {v2, v3, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    .line 125
    .local v2, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    :try_start_0
    sget-object v5, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-static {v5, v2, p4}, Landroidx/core/provider/RequestExecutor;->submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 130
    .restart local v4    # "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    invoke-virtual {p2, v4}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 131
    iget-object v0, v4, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v4    # "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v5, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v6, -0x3

    invoke-direct {v5, v6}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    invoke-virtual {p2, v5}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static resetTypefaceCache()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 77
    return-void
.end method
