.class Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeanMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final throwOnUnknownProperties:Z

.field private final warnOnUnknownProperties:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 436
    const-class v8, Lcom/google/firebase/database/ThrowOnExtraProperties;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    .line 437
    const-class v8, Lcom/google/firebase/database/IgnoreExtraProperties;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    .line 438
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    .line 440
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    .line 441
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    .line 442
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    .line 444
    const/4 v0, 0x0

    .line 446
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v8, 0x0

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 447
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_1
    iput-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    .line 454
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_3

    aget-object v6, v9, v8

    .line 455
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->shouldIncludeGetter(Ljava/lang/reflect/Method;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 456
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, "propertyName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    .line 458
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 459
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 460
    new-instance v8, Lcom/google/firebase/database/DatabaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found conflicting getters for name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 437
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 448
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    goto :goto_1

    .line 462
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "propertyName":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v11, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 467
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_5

    aget-object v5, v9, v8

    .line 468
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-static {v5}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->shouldIncludeField(Ljava/lang/reflect/Field;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 469
    invoke-static {v5}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 471
    .restart local v7    # "propertyName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->addProperty(Ljava/lang/String;)V

    .line 467
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 478
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_5
    move-object v1, p1

    .line 481
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_a

    aget-object v6, v9, v8

    .line 482
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->shouldIncludeSetter(Ljava/lang/reflect/Method;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 483
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    .line 484
    .restart local v7    # "propertyName":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 485
    .local v3, "existingPropertyName":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 486
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 487
    new-instance v8, Lcom/google/firebase/database/DatabaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found setter with invalid case-sensitive name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 488
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 490
    :cond_7
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 491
    .local v4, "existingSetter":Ljava/lang/reflect/Method;
    if-nez v4, :cond_9

    .line 492
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 493
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v11, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .end local v3    # "existingPropertyName":Ljava/lang/String;
    .end local v4    # "existingSetter":Ljava/lang/reflect/Method;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 494
    .restart local v3    # "existingPropertyName":Ljava/lang/String;
    .restart local v4    # "existingSetter":Ljava/lang/reflect/Method;
    .restart local v7    # "propertyName":Ljava/lang/String;
    :cond_9
    invoke-static {v6, v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 497
    new-instance v8, Lcom/google/firebase/database/DatabaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found a conflicting setters with name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 500
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (conflicts with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 502
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " defined on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 504
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 512
    .end local v3    # "existingPropertyName":Ljava/lang/String;
    .end local v4    # "existingSetter":Ljava/lang/reflect/Method;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v10, :cond_c

    aget-object v5, v9, v8

    .line 513
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    invoke-static {v5}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 517
    .restart local v7    # "propertyName":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    .line 518
    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 519
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 520
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v11, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 526
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_d

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 529
    :cond_d
    iget-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 530
    new-instance v8, Lcom/google/firebase/database/DatabaseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No properties to serialize found on class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 532
    :cond_e
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private addProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 535
    .local p0, "this":Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper<TT;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    .local v0, "oldValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two getters or fields with conflicting case sensitivity for property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :cond_0
    return-void
.end method

.method private static annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 774
    const-class v1, Lcom/google/firebase/database/PropertyName;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    const-class v1, Lcom/google/firebase/database/PropertyName;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/PropertyName;

    .line 776
    .local v0, "annotation":Lcom/google/firebase/database/PropertyName;
    invoke-interface {v0}, Lcom/google/firebase/database/PropertyName;->value()Ljava/lang/String;

    move-result-object v1

    .line 779
    .end local v0    # "annotation":Lcom/google/firebase/database/PropertyName;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSetterOverride(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "base"    # Ljava/lang/reflect/Method;
    .param p1, "override"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 748
    .line 749
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v5, "Expected override from a base class"

    .line 748
    invoke-static {v2, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "Expected void return type"

    invoke-static {v2, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 752
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "Expected void return type"

    invoke-static {v2, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 755
    .local v0, "baseParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 756
    .local v1, "overrideParameterTypes":[Ljava/lang/reflect/Type;
    array-length v2, v0

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Expected exactly one parameter"

    invoke-static {v2, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 757
    array-length v2, v1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "Expected exactly one parameter"

    invoke-static {v2, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v4

    aget-object v5, v1, v4

    .line 760
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 759
    :goto_2
    return v3

    :cond_0
    move v2, v4

    .line 756
    goto :goto_0

    :cond_1
    move v2, v4

    .line 757
    goto :goto_1

    :cond_2
    move v3, v4

    .line 760
    goto :goto_2
.end method

.method private static propertyName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 764
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "annotatedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "annotatedName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "annotatedName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 769
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->annotatedName(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "annotatedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "annotatedName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "annotatedName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->serializedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper<TT;>;"
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 615
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 616
    .local v0, "resolvedType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_1

    .line 617
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "resolvedType":Ljava/lang/reflect/Type;
    :cond_0
    move-object v0, p1

    .line 622
    :cond_1
    return-object v0
.end method

.method private static serializedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 783
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "get"

    aput-object v7, v4, v6

    const/4 v7, 0x1

    const-string v8, "set"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "is"

    aput-object v8, v4, v7

    .line 784
    .local v4, "prefixes":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 785
    .local v1, "methodPrefix":Ljava/lang/String;
    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 786
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 787
    move-object v1, v3

    .line 785
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 790
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 791
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Bean prefix for method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 793
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "strippedName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 797
    .local v0, "chars":[C
    const/4 v2, 0x0

    .line 798
    .local v2, "pos":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_3

    aget-char v6, v0, v2

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 799
    aget-char v6, v0, v2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v0, v2

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 802
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method private static shouldIncludeField(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, 0x0

    .line 724
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    const-class v1, Lcom/google/firebase/database/Exclude;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldIncludeGetter(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 689
    const-class v1, Lcom/google/firebase/database/Exclude;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldIncludeSetter(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 696
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_0

    .line 716
    const-class v2, Lcom/google/firebase/database/Exclude;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 719
    goto :goto_0
.end method


# virtual methods
.method public deserialize(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;",
            "Ljava/lang/reflect/Type;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    iget-object v10, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v10, :cond_0

    .line 550
    new-instance v10, Lcom/google/firebase/database/DatabaseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 552
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not define a no-argument constructor. If you are using ProGuard, make sure these constructors are not stripped."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 558
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 566
    .local v3, "instance":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 567
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 568
    .local v6, "propertyName":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 569
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->setters:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 570
    .local v8, "setter":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 571
    .local v5, "params":[Ljava/lang/reflect/Type;
    array-length v11, v5

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 572
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Setter does not have exactly one parameter"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 559
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    .end local v5    # "params":[Ljava/lang/reflect/Type;
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v8    # "setter":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 561
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 563
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 574
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "instance":Ljava/lang/Object;, "TT;"
    .restart local v5    # "params":[Ljava/lang/reflect/Type;
    .restart local v6    # "propertyName":Ljava/lang/String;
    .restart local v8    # "setter":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-direct {p0, v11, p2}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 575
    .local v7, "resolvedType":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->access$100(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 577
    .local v9, "value":Ljava/lang/Object;
    const/4 v11, 0x1

    :try_start_1
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v8, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 578
    :catch_3
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 580
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 583
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "params":[Ljava/lang/reflect/Type;
    .end local v7    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v8    # "setter":Ljava/lang/reflect/Method;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 584
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 585
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-direct {p0, v11, p2}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->resolveType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 586
    .restart local v7    # "resolvedType":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->access$100(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 588
    .restart local v9    # "value":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v2, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 589
    :catch_5
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 593
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "resolvedType":Ljava/lang/reflect/Type;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No setter/field for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " found on class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    .line 598
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "message":Ljava/lang/String;
    iget-object v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 600
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (fields/setters are case sensitive!)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    :cond_5
    iget-boolean v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->throwOnUnknownProperties:Z

    if-eqz v11, :cond_6

    .line 603
    new-instance v10, Lcom/google/firebase/database/DatabaseException;

    invoke-direct {v10, v4}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 604
    :cond_6
    iget-boolean v11, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->warnOnUnknownProperties:Z

    if-eqz v11, :cond_1

    .line 606
    const-string v11, "ClassMapper"

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 610
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_7
    return-object v3
.end method

.method public serialize(Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 628
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t serialize object of class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 630
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with BeanMapper for class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->clazz:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 634
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 635
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->properties:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 637
    .local v3, "property":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 638
    iget-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->getters:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 640
    .local v2, "getter":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    :try_start_0
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 658
    .end local v2    # "getter":Ljava/lang/reflect/Method;
    .local v4, "propertyValue":Ljava/lang/Object;
    :goto_1
    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 659
    .local v6, "serializedValue":Ljava/lang/Object;
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 641
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .end local v6    # "serializedValue":Ljava/lang/Object;
    .restart local v2    # "getter":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 643
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 648
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "getter":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v8, p0, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper$BeanMapper;->fields:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 649
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_2

    .line 650
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bean property without field or getter:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 653
    :cond_2
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .restart local v4    # "propertyValue":Ljava/lang/Object;
    goto :goto_1

    .line 654
    .end local v4    # "propertyValue":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 661
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "property":Ljava/lang/String;
    :cond_3
    return-object v5
.end method
