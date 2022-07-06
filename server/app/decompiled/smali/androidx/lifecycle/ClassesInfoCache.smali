.class final Landroidx/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ClassesInfoCache$MethodReference;,
        Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroidx/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroidx/lifecycle/ClassesInfoCache;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/lifecycle/ClassesInfoCache;-><init>()V

    sput-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 42
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 25
    .param p2    # [Ljava/lang/reflect/Method;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v5, v19

    .line 106
    new-instance v19, Ljava/util/HashMap;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v6, v19

    .line 107
    move-object/from16 v19, v5

    if-eqz v19, :cond_0

    .line 108
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v19

    move-object/from16 v7, v19

    .line 109
    move-object/from16 v19, v7

    if-eqz v19, :cond_0

    .line 110
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    :cond_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v7, v19

    .line 115
    move-object/from16 v19, v7

    move-object/from16 v8, v19

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v9, v19

    const/16 v19, 0x0

    move/from16 v10, v19

    :goto_0
    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v19, v8

    move/from16 v20, v10

    aget-object v19, v19, v20

    move-object/from16 v11, v19

    .line 116
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    move-object/from16 v19, v0

    .line 117
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 116
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v12, v19

    :goto_1
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    move-object/from16 v13, v19

    .line 118
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v13

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    move-object/from16 v22, v13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/lifecycle/Lifecycle$Event;

    move-object/from16 v23, v3

    invoke-direct/range {v19 .. v23}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 119
    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 122
    :cond_2
    move-object/from16 v19, v4

    if-eqz v19, :cond_3

    move-object/from16 v19, v4

    :goto_2
    move-object/from16 v8, v19

    .line 123
    const/16 v19, 0x0

    move/from16 v9, v19

    .line 124
    move-object/from16 v19, v8

    move-object/from16 v10, v19

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v11, v19

    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_3
    move/from16 v19, v12

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    move-object/from16 v19, v10

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v13, v19

    .line 125
    move-object/from16 v19, v13

    const-class v20, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Landroidx/lifecycle/OnLifecycleEvent;

    move-object/from16 v14, v19

    .line 126
    move-object/from16 v19, v14

    if-nez v19, :cond_4

    .line 124
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 122
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v19

    goto :goto_2

    .line 129
    :cond_4
    const/16 v19, 0x1

    move/from16 v9, v19

    .line 130
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v15, v19

    .line 131
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 132
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 133
    const/16 v19, 0x1

    move/from16 v16, v19

    .line 134
    move-object/from16 v19, v15

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const-class v20, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 135
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 139
    :cond_5
    move-object/from16 v19, v14

    invoke-interface/range {v19 .. v19}, Landroidx/lifecycle/OnLifecycleEvent;->value()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v19

    move-object/from16 v17, v19

    .line 141
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 142
    const/16 v19, 0x2

    move/from16 v16, v19

    .line 143
    move-object/from16 v19, v15

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const-class v20, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 144
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "invalid parameter type. second arg must be an event"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 147
    :cond_6
    move-object/from16 v19, v17

    sget-object v20, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 148
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "Second arg is supported only for ON_ANY value"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 152
    :cond_7
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 153
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string v21, "cannot have more than 2 params"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 155
    :cond_8
    new-instance v19, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move/from16 v21, v16

    move-object/from16 v22, v13

    invoke-direct/range {v20 .. v22}, Landroidx/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    move-object/from16 v18, v19

    .line 156
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v18

    move-object/from16 v22, v17

    move-object/from16 v23, v3

    invoke-direct/range {v19 .. v23}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 158
    :cond_9
    new-instance v19, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v6

    invoke-direct/range {v20 .. v21}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    move-object/from16 v10, v19

    .line 159
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v10

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 160
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move/from16 v21, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 161
    move-object/from16 v19, v10

    move-object/from16 v2, v19

    return-object v2
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 71
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/Lifecycle$Event;

    move-object v5, v7

    .line 92
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v3

    move-object v8, v5

    if-eq v7, v8, :cond_0

    .line 93
    move-object v7, v2

    iget-object v7, v7, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    move-object v6, v7

    .line 94
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    .line 95
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    :cond_0
    move-object v7, v5

    if-nez v7, :cond_1

    .line 100
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-object v2, v3

    .line 82
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 83
    move-object v3, v2

    move-object v0, v3

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v3

    move-object v2, v3

    .line 86
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    move-object v2, v9

    .line 46
    move-object v9, v2

    if-eqz v9, :cond_0

    .line 47
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v0, v9

    .line 65
    :goto_0
    return v0

    .line 50
    :cond_0
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v3, v9

    .line 51
    move-object v9, v3

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_2

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 52
    move-object v9, v7

    const-class v10, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/OnLifecycleEvent;

    move-object v8, v9

    .line 53
    move-object v9, v8

    if-eqz v9, :cond_1

    .line 60
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v9

    .line 61
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 51
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    move-object v10, v1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 65
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0
.end method
