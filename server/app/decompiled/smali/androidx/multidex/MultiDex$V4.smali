.class final Landroidx/multidex/MultiDex$V4;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V4"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 744
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v2, v13

    .line 756
    move-object v13, v0

    const-string v14, "path"

    invoke-static {v13, v14}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    move-object v3, v13

    .line 758
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v3

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 759
    move v13, v2

    new-array v13, v13, [Ljava/lang/String;

    move-object v5, v13

    .line 760
    move v13, v2

    new-array v13, v13, [Ljava/io/File;

    move-object v6, v13

    .line 761
    move v13, v2

    new-array v13, v13, [Ljava/util/zip/ZipFile;

    move-object v7, v13

    .line 762
    move v13, v2

    new-array v13, v13, [Ldalvik/system/DexFile;

    move-object v8, v13

    .line 763
    move-object v13, v1

    invoke-interface {v13}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    move-object v9, v13

    .line 764
    :goto_0
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 765
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    move-object v10, v13

    .line 766
    move-object v13, v10

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 767
    move-object v13, v4

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 768
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/ListIterator;->previousIndex()I

    move-result v13

    move v12, v13

    .line 769
    move-object v13, v5

    move v14, v12

    move-object v15, v11

    aput-object v15, v13, v14

    .line 770
    move-object v13, v6

    move v14, v12

    move-object v15, v10

    aput-object v15, v13, v14

    .line 771
    move-object v13, v7

    move v14, v12

    new-instance v15, Ljava/util/zip/ZipFile;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v15, v13, v14

    .line 772
    move-object v13, v8

    move v14, v12

    move-object v15, v11

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".dex"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v15

    aput-object v15, v13, v14

    .line 773
    goto :goto_0

    .line 775
    :cond_0
    move-object v13, v3

    move-object v14, v0

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 776
    move-object v13, v0

    const-string v14, "mPaths"

    move-object v15, v5

    invoke-static {v13, v14, v15}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    move-object v13, v0

    const-string v14, "mFiles"

    move-object v15, v6

    invoke-static {v13, v14, v15}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    move-object v13, v0

    const-string v14, "mZips"

    move-object v15, v7

    invoke-static {v13, v14, v15}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    move-object v13, v0

    const-string v14, "mDexs"

    move-object v15, v8

    invoke-static {v13, v14, v15}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    return-void
.end method
