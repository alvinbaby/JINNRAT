.class public Landroidx/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/GeneratedAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v3

    return-object v0

    .line 106
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 107
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 108
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 109
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 110
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 111
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    move-object v1, v7

    .line 119
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 120
    move-object v7, v1

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v3, v7

    .line 121
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    :goto_1
    invoke-static {v7}, Landroidx/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 126
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    .line 125
    :goto_2
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 127
    move-object v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v6, v7

    .line 129
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 130
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 132
    :cond_0
    move-object v7, v6

    move-object v0, v7

    .line 134
    :goto_3
    return-object v0

    .line 120
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 122
    :cond_2
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 126
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_2

    .line 133
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 134
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_3

    .line 135
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 137
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_LifecycleAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroidx/lifecycle/Lifecycling;->lifecycleEventObserver(Ljava/lang/Object;)Landroidx/lifecycle/LifecycleEventObserver;

    move-result-object v2

    move-object v1, v2

    .line 57
    new-instance v2, Landroidx/lifecycle/Lifecycling$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/lifecycle/Lifecycling$1;-><init>(Landroidx/lifecycle/LifecycleEventObserver;)V

    move-object v0, v2

    return-object v0
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    sget-object v3, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    .line 143
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 144
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Landroidx/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    move-result v3

    move v2, v3

    .line 147
    sget-object v3, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    move-object v4, v0

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 148
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    const-class v1, Landroidx/lifecycle/LifecycleObserver;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static lifecycleEventObserver(Ljava/lang/Object;)Landroidx/lifecycle/LifecycleEventObserver;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v8, v0

    instance-of v8, v8, Landroidx/lifecycle/LifecycleEventObserver;

    move v1, v8

    .line 69
    move-object v8, v0

    instance-of v8, v8, Landroidx/lifecycle/FullLifecycleObserver;

    move v2, v8

    .line 70
    move v8, v1

    if-eqz v8, :cond_0

    move v8, v2

    if-eqz v8, :cond_0

    .line 71
    new-instance v8, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    check-cast v10, Landroidx/lifecycle/FullLifecycleObserver;

    move-object v11, v0

    check-cast v11, Landroidx/lifecycle/LifecycleEventObserver;

    invoke-direct {v9, v10, v11}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    move-object v0, v8

    .line 98
    :goto_0
    return-object v0

    .line 74
    :cond_0
    move v8, v2

    if-eqz v8, :cond_1

    .line 75
    new-instance v8, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    check-cast v10, Landroidx/lifecycle/FullLifecycleObserver;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    move-object v0, v8

    goto :goto_0

    .line 78
    :cond_1
    move v8, v1

    if-eqz v8, :cond_2

    .line 79
    move-object v8, v0

    check-cast v8, Landroidx/lifecycle/LifecycleEventObserver;

    move-object v0, v8

    goto :goto_0

    .line 82
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    .line 83
    move-object v8, v3

    invoke-static {v8}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v8

    move v4, v8

    .line 84
    move v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 85
    sget-object v8, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v9, v3

    .line 86
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v5, v8

    .line 87
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 88
    move-object v8, v5

    const/4 v9, 0x0

    .line 89
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    move-object v9, v0

    .line 88
    invoke-static {v8, v9}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v8

    move-object v6, v8

    .line 90
    new-instance v8, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    invoke-direct {v9, v10}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroidx/lifecycle/GeneratedAdapter;)V

    move-object v0, v8

    goto :goto_0

    .line 92
    :cond_3
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroidx/lifecycle/GeneratedAdapter;

    move-object v6, v8

    .line 93
    const/4 v8, 0x0

    move v7, v8

    :goto_1
    move v8, v7

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 94
    move-object v8, v6

    move v9, v7

    move-object v10, v5

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Constructor;

    move-object v11, v0

    invoke-static {v10, v11}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v10

    aput-object v10, v8, v9

    .line 93
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 96
    :cond_4
    new-instance v8, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    invoke-direct {v9, v10}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    move-object v0, v8

    goto/16 :goto_0

    .line 98
    :cond_5
    new-instance v8, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    goto/16 :goto_0
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 154
    const/4 v9, 0x1

    move v0, v9

    .line 195
    :goto_0
    return v0

    .line 157
    :cond_0
    move-object v9, v0

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object v1, v9

    .line 158
    move-object v9, v1

    if-eqz v9, :cond_1

    .line 159
    sget-object v9, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v10, v0

    move-object v11, v1

    .line 160
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 159
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 161
    const/4 v9, 0x2

    move v0, v9

    goto :goto_0

    .line 164
    :cond_1
    sget-object v9, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroidx/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    move-result v9

    move v2, v9

    .line 165
    move v9, v2

    if-eqz v9, :cond_2

    .line 166
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 169
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object v3, v9

    .line 170
    const/4 v9, 0x0

    move-object v4, v9

    .line 171
    move-object v9, v3

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 172
    move-object v9, v3

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 173
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 175
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    sget-object v11, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v12, v3

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v9

    .line 178
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_8

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 179
    move-object v9, v8

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 178
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 182
    :cond_5
    move-object v9, v8

    invoke-static {v9}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 183
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 185
    :cond_6
    move-object v9, v4

    if-nez v9, :cond_7

    .line 186
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v9

    .line 188
    :cond_7
    move-object v9, v4

    sget-object v10, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v9

    goto :goto_2

    .line 190
    :cond_8
    move-object v9, v4

    if-eqz v9, :cond_9

    .line 191
    sget-object v9, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    move-object v10, v0

    move-object v11, v4

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 192
    const/4 v9, 0x2

    move v0, v9

    goto/16 :goto_0

    .line 195
    :cond_9
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0
.end method
