.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    :goto_0
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 63
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1265
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1266
    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 649
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 650
    move-object v5, v2

    move-object v6, v4

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 651
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 648
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 654
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    move-object v5, v14

    .line 1126
    move-object v14, v5

    if-nez v14, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1129
    :cond_0
    move-object v14, v5

    iget v14, v14, Landroidx/fragment/app/Fragment;->mContainerId:I

    move v6, v14

    .line 1130
    move v14, v6

    if-nez v14, :cond_1

    .line 1131
    goto :goto_0

    .line 1133
    :cond_1
    move v14, v3

    if-eqz v14, :cond_8

    sget-object v14, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    move-object v15, v1

    iget v15, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget v14, v14, v15

    :goto_1
    move v7, v14

    .line 1134
    const/4 v14, 0x0

    move v8, v14

    .line 1135
    const/4 v14, 0x0

    move v9, v14

    .line 1136
    const/4 v14, 0x0

    move v10, v14

    .line 1137
    const/4 v14, 0x0

    move v11, v14

    .line 1138
    move v14, v7

    packed-switch v14, :pswitch_data_0

    .line 1176
    :goto_2
    :pswitch_0
    move-object v14, v2

    move v15, v6

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v12, v14

    .line 1177
    move v14, v8

    if-eqz v14, :cond_2

    .line 1178
    move-object v14, v12

    move-object v15, v2

    move/from16 v16, v6

    .line 1179
    invoke-static/range {v14 .. v16}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    move-object v12, v14

    .line 1180
    move-object v14, v12

    move-object v15, v5

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1181
    move-object v14, v12

    move v15, v3

    iput-boolean v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1182
    move-object v14, v12

    move-object v15, v0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1184
    :cond_2
    move v14, v4

    if-nez v14, :cond_4

    move v14, v11

    if-eqz v14, :cond_4

    .line 1185
    move-object v14, v12

    if-eqz v14, :cond_3

    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object v15, v5

    if-ne v14, v15, :cond_3

    .line 1186
    move-object v14, v12

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1193
    :cond_3
    move-object v14, v0

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v13, v14

    .line 1194
    move-object v14, v5

    iget v14, v14, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    move-object v14, v13

    iget v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v15, 0x1

    if-lt v14, v15, :cond_4

    move-object v14, v0

    iget-boolean v14, v14, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v14, :cond_4

    .line 1196
    move-object v14, v13

    move-object v15, v5

    invoke-virtual {v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1197
    move-object v14, v13

    move-object v15, v5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1200
    :cond_4
    move v14, v10

    if-eqz v14, :cond_6

    move-object v14, v12

    if-eqz v14, :cond_5

    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v14, :cond_6

    .line 1201
    :cond_5
    move-object v14, v12

    move-object v15, v2

    move/from16 v16, v6

    .line 1202
    invoke-static/range {v14 .. v16}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    move-object v12, v14

    .line 1203
    move-object v14, v12

    move-object v15, v5

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1204
    move-object v14, v12

    move v15, v3

    iput-boolean v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1205
    move-object v14, v12

    move-object v15, v0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1208
    :cond_6
    move v14, v4

    if-nez v14, :cond_7

    move v14, v9

    if-eqz v14, :cond_7

    move-object v14, v12

    if-eqz v14, :cond_7

    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object v15, v5

    if-ne v14, v15, :cond_7

    .line 1210
    move-object v14, v12

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1212
    :cond_7
    goto/16 :goto_0

    .line 1133
    :cond_8
    move-object v14, v1

    iget v14, v14, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    goto/16 :goto_1

    .line 1140
    :pswitch_1
    move v14, v4

    if-eqz v14, :cond_a

    .line 1141
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v14, :cond_9

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_9

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    :goto_3
    move v8, v14

    .line 1145
    :goto_4
    const/4 v14, 0x1

    move v11, v14

    .line 1146
    goto/16 :goto_2

    .line 1141
    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    .line 1143
    :cond_a
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    move v8, v14

    goto :goto_4

    .line 1149
    :pswitch_2
    move v14, v4

    if-eqz v14, :cond_b

    .line 1150
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    move v8, v14

    .line 1154
    :goto_5
    const/4 v14, 0x1

    move v11, v14

    .line 1155
    goto/16 :goto_2

    .line 1152
    :cond_b
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v14, :cond_c

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_c

    const/4 v14, 0x1

    :goto_6
    move v8, v14

    goto :goto_5

    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 1157
    :pswitch_3
    move v14, v4

    if-eqz v14, :cond_e

    .line 1158
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v14, :cond_d

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_d

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    :goto_7
    move v10, v14

    .line 1162
    :goto_8
    const/4 v14, 0x1

    move v9, v14

    .line 1163
    goto/16 :goto_2

    .line 1158
    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    .line 1160
    :cond_e
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_f

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_f

    const/4 v14, 0x1

    :goto_9
    move v10, v14

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 1166
    :pswitch_4
    move v14, v4

    if-eqz v14, :cond_11

    .line 1167
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v14, :cond_10

    move-object v14, v5

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v14, :cond_10

    move-object v14, v5

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1168
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_10

    move-object v14, v5

    iget v14, v14, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_10

    const/4 v14, 0x1

    :goto_a
    move v10, v14

    .line 1173
    :goto_b
    const/4 v14, 0x1

    move v9, v14

    goto/16 :goto_2

    .line 1168
    :cond_10
    const/4 v14, 0x0

    goto :goto_a

    .line 1171
    :cond_11
    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_12

    move-object v14, v5

    iget-boolean v14, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v14, :cond_12

    const/4 v14, 0x1

    :goto_c
    move v10, v14

    goto :goto_b

    :cond_12
    const/4 v14, 0x0

    goto :goto_c

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1078
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 1079
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransaction$Op;

    move-object v5, v6

    .line 1080
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    .line 1078
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1082
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    new-instance v18, Landroidx/collection/ArrayMap;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v7, v18

    .line 164
    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v8, v18

    :goto_0
    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 165
    move-object/from16 v18, v3

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v9, v18

    .line 166
    move-object/from16 v18, v9

    move/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 164
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 169
    :cond_1
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v10, v18

    .line 170
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 171
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v11, v18

    .line 174
    move/from16 v18, v10

    if-eqz v18, :cond_2

    .line 175
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 176
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 181
    :goto_1
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_2
    move/from16 v18, v14

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 182
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v15, v18

    .line 183
    move-object/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v16, v18

    .line 184
    move-object/from16 v18, v7

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, v18

    .line 185
    move-object/from16 v18, v17

    if-eqz v18, :cond_3

    .line 186
    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 181
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 178
    :cond_2
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 179
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    goto :goto_1

    .line 188
    :cond_3
    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_3

    .line 193
    :cond_4
    move-object/from16 v18, v7

    move-object/from16 v2, v18

    return-object v2
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1094
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1097
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1098
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_1
    move v6, v4

    if-ltz v6, :cond_1

    .line 1099
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransaction$Op;

    move-object v5, v6

    .line 1100
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    .line 1098
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1102
    :cond_1
    goto :goto_0
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 980
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v1

    .line 981
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v10

    .line 982
    :goto_0
    move-object v5, v10

    .line 983
    move-object v10, v5

    if-eqz v10, :cond_3

    .line 984
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 985
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 986
    move-object v10, v3

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :goto_1
    move v8, v10

    .line 987
    const/4 v10, 0x0

    move v9, v10

    :goto_2
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_2

    .line 988
    move-object v10, v7

    move-object v11, v3

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 989
    move-object v10, v6

    move-object v11, v3

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 987
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 981
    :cond_0
    move-object v10, v0

    .line 982
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v10

    goto :goto_0

    .line 986
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Landroidx/collection/ArrayMap;->size()I

    move-result v10

    goto :goto_1

    .line 991
    :cond_2
    move v10, v4

    if-eqz v10, :cond_4

    .line 992
    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 997
    :cond_3
    :goto_3
    return-void

    .line 994
    :cond_4
    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 472
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    const/4 v4, 0x0

    move v0, v4

    .line 476
    :goto_1
    return v0

    .line 471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v14, v3

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object v4, v14

    .line 841
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v14

    move-object v5, v14

    .line 842
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v2

    if-eqz v14, :cond_0

    move-object v14, v5

    if-nez v14, :cond_1

    .line 843
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->clear()V

    .line 844
    const/4 v14, 0x0

    move-object v0, v14

    .line 884
    :goto_0
    return-object v0

    .line 846
    :cond_1
    new-instance v14, Landroidx/collection/ArrayMap;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v6, v14

    .line 847
    move-object v14, v0

    move-object v15, v6

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 851
    move-object v14, v3

    iget-object v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v9, v14

    .line 852
    move-object v14, v3

    iget-boolean v14, v14, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v14, :cond_4

    .line 853
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v14

    move-object v7, v14

    .line 854
    move-object v14, v9

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v8, v14

    .line 860
    :goto_1
    move-object v14, v8

    if-eqz v14, :cond_2

    .line 861
    move-object v14, v6

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v14

    .line 862
    move-object v14, v6

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v14

    .line 864
    :cond_2
    move-object v14, v7

    if-eqz v14, :cond_7

    .line 865
    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 866
    move-object v14, v8

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v10, v14

    :goto_2
    move v14, v10

    if-ltz v14, :cond_6

    .line 867
    move-object v14, v8

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v11, v14

    .line 868
    move-object v14, v6

    move-object v15, v11

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v12, v14

    .line 869
    move-object v14, v12

    if-nez v14, :cond_5

    .line 870
    move-object v14, v1

    move-object v15, v11

    invoke-static {v14, v15}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 871
    move-object v14, v13

    if-eqz v14, :cond_3

    .line 872
    move-object v14, v1

    move-object v15, v13

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 866
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 856
    :cond_4
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v14

    move-object v7, v14

    .line 857
    move-object v14, v9

    iget-object v14, v14, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v14

    goto :goto_1

    .line 874
    :cond_5
    move-object v14, v11

    move-object v15, v12

    invoke-static {v15}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 875
    move-object v14, v1

    move-object v15, v11

    invoke-static {v14, v15}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 876
    move-object v14, v13

    if-eqz v14, :cond_3

    .line 877
    move-object v14, v1

    move-object v15, v13

    move-object/from16 v16, v12

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    .line 884
    :cond_6
    :goto_4
    move-object v14, v6

    move-object v0, v14

    goto/16 :goto_0

    .line 882
    :cond_7
    move-object v14, v1

    move-object v15, v6

    invoke-static {v14, v15}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    goto :goto_4
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object v13, v2

    if-nez v13, :cond_1

    .line 785
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->clear()V

    .line 786
    const/4 v13, 0x0

    move-object v0, v13

    .line 819
    :goto_0
    return-object v0

    .line 788
    :cond_1
    move-object v13, v3

    iget-object v13, v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object v4, v13

    .line 789
    new-instance v13, Landroidx/collection/ArrayMap;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v5, v13

    .line 790
    move-object v13, v0

    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 794
    move-object v13, v3

    iget-object v13, v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v8, v13

    .line 795
    move-object v13, v3

    iget-boolean v13, v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v13, :cond_3

    .line 796
    move-object v13, v4

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v13

    move-object v6, v13

    .line 797
    move-object v13, v8

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v13

    .line 803
    :goto_1
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v13

    .line 804
    move-object v13, v6

    if-eqz v13, :cond_6

    .line 805
    move-object v13, v6

    move-object v14, v7

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 806
    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v9, v13

    :goto_2
    move v13, v9

    if-ltz v13, :cond_5

    .line 807
    move-object v13, v7

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v10, v13

    .line 808
    move-object v13, v5

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object v11, v13

    .line 809
    move-object v13, v11

    if-nez v13, :cond_4

    .line 810
    move-object v13, v1

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 806
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 799
    :cond_3
    move-object v13, v4

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v13

    move-object v6, v13

    .line 800
    move-object v13, v8

    iget-object v13, v13, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v7, v13

    goto :goto_1

    .line 811
    :cond_4
    move-object v13, v10

    move-object v14, v11

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 812
    move-object v13, v1

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v12, v13

    .line 813
    move-object v13, v1

    move-object v14, v11

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 819
    :cond_5
    :goto_4
    move-object v13, v5

    move-object v0, v13

    goto/16 :goto_0

    .line 817
    :cond_6
    move-object v13, v1

    move-object v14, v5

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v13

    goto :goto_4
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 10

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 426
    move-object v6, v0

    if-eqz v6, :cond_2

    .line 427
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 428
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 429
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 431
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 432
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 433
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 435
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 436
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 437
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 440
    :cond_2
    move-object v6, v1

    if-eqz v6, :cond_5

    .line 441
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 442
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 443
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 445
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 446
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 447
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 449
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 450
    move-object v6, v5

    if-eqz v6, :cond_5

    .line 451
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 454
    :cond_5
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 455
    const/4 v6, 0x0

    move-object v0, v6

    .line 467
    :goto_0
    return-object v0

    .line 458
    :cond_6
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v6, :cond_7

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 459
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v0, v6

    goto :goto_0

    .line 461
    :cond_7
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v6, :cond_8

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 462
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    move-object v0, v6

    goto :goto_0

    .line 464
    :cond_8
    sget-object v6, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v6, :cond_9

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v6, :cond_a

    .line 465
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Invalid Transition types"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 467
    :cond_a
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v7, 0x0

    move-object v5, v7

    .line 1004
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 1005
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    .line 1006
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1007
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1008
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1010
    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 1011
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .line 1013
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1014
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1015
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1018
    :cond_2
    move-object v7, v5

    move-object v0, v7

    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 691
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 692
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v18, v0

    move-object/from16 v11, v18

    .line 694
    move-object/from16 v18, v10

    if-eqz v18, :cond_0

    move-object/from16 v18, v11

    if-nez v18, :cond_1

    .line 695
    :cond_0
    const/16 v18, 0x0

    move-object/from16 v1, v18

    .line 764
    :goto_0
    return-object v1

    .line 698
    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    move/from16 v12, v18

    .line 699
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    .line 700
    :goto_1
    move-object/from16 v13, v18

    .line 702
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    invoke-static/range {v18 .. v21}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v18

    move-object/from16 v14, v18

    .line 705
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 706
    const/16 v18, 0x0

    move-object/from16 v13, v18

    .line 711
    :goto_2
    move-object/from16 v18, v8

    if-nez v18, :cond_4

    move-object/from16 v18, v9

    if-nez v18, :cond_4

    move-object/from16 v18, v13

    if-nez v18, :cond_4

    .line 713
    const/16 v18, 0x0

    move-object/from16 v1, v18

    goto :goto_0

    .line 699
    :cond_2
    move-object/from16 v18, v1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    .line 700
    invoke-static/range {v18 .. v21}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1

    .line 708
    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v18

    goto :goto_2

    .line 716
    :cond_4
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v21, v14

    const/16 v22, 0x1

    invoke-static/range {v18 .. v22}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 719
    move-object/from16 v18, v13

    if-eqz v18, :cond_6

    .line 720
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v33, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v33

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v15, v18

    .line 721
    move-object/from16 v18, v1

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v18 .. v21}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 723
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v18, v0

    move/from16 v16, v18

    .line 724
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v18, v0

    move-object/from16 v17, v18

    .line 725
    move-object/from16 v18, v1

    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v14

    move/from16 v22, v16

    move-object/from16 v23, v17

    invoke-static/range {v18 .. v23}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 727
    move-object/from16 v18, v8

    if-eqz v18, :cond_5

    .line 728
    move-object/from16 v18, v1

    move-object/from16 v19, v8

    move-object/from16 v20, v15

    invoke-virtual/range {v18 .. v20}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 735
    :cond_5
    :goto_3
    move-object/from16 v18, v13

    move-object/from16 v16, v18

    .line 736
    move-object/from16 v18, v2

    new-instance v19, Landroidx/fragment/app/FragmentTransition$4;

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    move-object/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v23, v16

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v3

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v30, v6

    move-object/from16 v31, v8

    move-object/from16 v32, v15

    invoke-direct/range {v20 .. v32}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static/range {v18 .. v19}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v18

    .line 764
    move-object/from16 v18, v13

    move-object/from16 v1, v18

    goto/16 :goto_0

    .line 731
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v15, v18

    goto :goto_3
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 562
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 563
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 564
    move-object/from16 v20, v10

    if-eqz v20, :cond_0

    .line 565
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 567
    :cond_0
    move-object/from16 v20, v10

    if-eqz v20, :cond_1

    move-object/from16 v20, v11

    if-nez v20, :cond_2

    .line 568
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v1, v20

    .line 634
    :goto_0
    return-object v1

    .line 571
    :cond_2
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v20, v0

    move/from16 v12, v20

    .line 572
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    .line 573
    :goto_1
    move-object/from16 v13, v20

    .line 575
    move-object/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v20

    move-object/from16 v14, v20

    .line 578
    move-object/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v20

    move-object/from16 v15, v20

    .line 581
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 582
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 583
    move-object/from16 v20, v14

    if-eqz v20, :cond_3

    .line 584
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->clear()V

    .line 586
    :cond_3
    move-object/from16 v20, v15

    if-eqz v20, :cond_4

    .line 587
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Landroidx/collection/ArrayMap;->clear()V

    .line 596
    :cond_4
    :goto_2
    move-object/from16 v20, v8

    if-nez v20, :cond_7

    move-object/from16 v20, v9

    if-nez v20, :cond_7

    move-object/from16 v20, v13

    if-nez v20, :cond_7

    .line 598
    const/16 v20, 0x0

    move-object/from16 v1, v20

    goto :goto_0

    .line 572
    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    .line 573
    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    goto :goto_1

    .line 590
    :cond_6
    move-object/from16 v20, v6

    move-object/from16 v21, v14

    move-object/from16 v22, v4

    .line 591
    invoke-virtual/range {v22 .. v22}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v22

    .line 590
    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 592
    move-object/from16 v20, v7

    move-object/from16 v21, v15

    move-object/from16 v22, v4

    .line 593
    invoke-virtual/range {v22 .. v22}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v22

    .line 592
    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    goto :goto_2

    .line 601
    :cond_7
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v24, 0x1

    invoke-static/range {v20 .. v24}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 605
    move-object/from16 v20, v13

    if-eqz v20, :cond_9

    .line 606
    move-object/from16 v20, v7

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 607
    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    invoke-virtual/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 609
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    move/from16 v18, v20

    .line 610
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v20, v0

    move-object/from16 v19, v20

    .line 611
    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    move/from16 v24, v18

    move-object/from16 v25, v19

    invoke-static/range {v20 .. v25}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 613
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v16, v20

    .line 614
    move-object/from16 v20, v15

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move/from16 v23, v12

    invoke-static/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v17, v20

    .line 616
    move-object/from16 v20, v17

    if-eqz v20, :cond_8

    .line 617
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 624
    :cond_8
    :goto_3
    move-object/from16 v20, v2

    new-instance v21, Landroidx/fragment/app/FragmentTransition$3;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v26, v15

    move-object/from16 v27, v17

    move-object/from16 v28, v1

    move-object/from16 v29, v16

    invoke-direct/range {v22 .. v29}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    invoke-static/range {v20 .. v21}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v20

    .line 634
    move-object/from16 v20, v13

    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 620
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v16, v20

    .line 621
    const/16 v20, 0x0

    move-object/from16 v17, v20

    goto :goto_3
.end method

.method private static configureTransitionsOrdered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 313
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 314
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v20, v0

    move/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v6, v20

    .line 316
    :cond_0
    move-object/from16 v20, v6

    if-nez v20, :cond_1

    .line 369
    :goto_0
    return-void

    .line 319
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 320
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 321
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    invoke-static/range {v20 .. v21}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v20

    move-object/from16 v9, v20

    .line 322
    move-object/from16 v20, v9

    if-nez v20, :cond_2

    .line 323
    goto :goto_0

    .line 325
    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v20, v0

    move/from16 v10, v20

    .line 326
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    move/from16 v11, v20

    .line 328
    move-object/from16 v20, v9

    move-object/from16 v21, v7

    move/from16 v22, v10

    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v12, v20

    .line 329
    move-object/from16 v20, v9

    move-object/from16 v21, v8

    move/from16 v22, v11

    invoke-static/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 331
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v20

    .line 332
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v20

    .line 334
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-static/range {v20 .. v28}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v16, v20

    .line 338
    move-object/from16 v20, v12

    if-nez v20, :cond_3

    move-object/from16 v20, v16

    if-nez v20, :cond_3

    move-object/from16 v20, v13

    if-nez v20, :cond_3

    .line 340
    goto/16 :goto_0

    .line 343
    :cond_3
    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v22, v8

    move-object/from16 v23, v14

    move-object/from16 v24, v4

    invoke-static/range {v20 .. v24}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v17, v20

    .line 346
    move-object/from16 v20, v17

    if-eqz v20, :cond_4

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 347
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 352
    :cond_5
    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 354
    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v16

    move-object/from16 v24, v7

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v25, v0

    invoke-static/range {v20 .. v25}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 357
    move-object/from16 v20, v18

    if-eqz v20, :cond_6

    .line 358
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v20

    .line 359
    move-object/from16 v20, v9

    move-object/from16 v21, v18

    move-object/from16 v22, v12

    move-object/from16 v23, v19

    move-object/from16 v24, v13

    move-object/from16 v25, v17

    move-object/from16 v26, v16

    move-object/from16 v27, v15

    invoke-virtual/range {v20 .. v27}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 362
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v4

    move-object/from16 v24, v15

    move-object/from16 v25, v12

    move-object/from16 v26, v19

    move-object/from16 v27, v13

    move-object/from16 v28, v17

    invoke-static/range {v20 .. v28}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 364
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v15

    move-object/from16 v23, v5

    invoke-virtual/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 366
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 367
    move-object/from16 v20, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v15

    move-object/from16 v23, v5

    invoke-virtual/range {v20 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 369
    :cond_6
    goto/16 :goto_0
.end method

.method private static configureTransitionsReordered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v21, 0x0

    move-object/from16 v6, v21

    .line 215
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 216
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v21, v0

    move/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v6, v21

    .line 218
    :cond_0
    move-object/from16 v21, v6

    if-nez v21, :cond_1

    .line 269
    :goto_0
    return-void

    .line 221
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    move-object/from16 v21, v0

    move-object/from16 v7, v21

    .line 222
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    move-object/from16 v21, v0

    move-object/from16 v8, v21

    .line 223
    move-object/from16 v21, v8

    move-object/from16 v22, v7

    invoke-static/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v21

    move-object/from16 v9, v21

    .line 224
    move-object/from16 v21, v9

    if-nez v21, :cond_2

    .line 225
    goto :goto_0

    .line 227
    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v21, v0

    move/from16 v10, v21

    .line 228
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v21, v0

    move/from16 v11, v21

    .line 230
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v21

    .line 231
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v21

    .line 232
    move-object/from16 v21, v9

    move-object/from16 v22, v7

    move/from16 v23, v10

    invoke-static/range {v21 .. v23}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 233
    move-object/from16 v21, v9

    move-object/from16 v22, v8

    move/from16 v23, v11

    invoke-static/range {v21 .. v23}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    .line 235
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v13

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-static/range {v21 .. v29}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v16, v21

    .line 239
    move-object/from16 v21, v14

    if-nez v21, :cond_3

    move-object/from16 v21, v16

    if-nez v21, :cond_3

    move-object/from16 v21, v15

    if-nez v21, :cond_3

    .line 241
    goto/16 :goto_0

    .line 244
    :cond_3
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v24, v13

    move-object/from16 v25, v4

    invoke-static/range {v21 .. v25}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v17, v21

    .line 247
    move-object/from16 v21, v9

    move-object/from16 v22, v14

    move-object/from16 v23, v7

    move-object/from16 v24, v12

    move-object/from16 v25, v4

    invoke-static/range {v21 .. v25}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v18, v21

    .line 250
    move-object/from16 v21, v18

    const/16 v22, 0x4

    invoke-static/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 252
    move-object/from16 v21, v9

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v7

    move/from16 v26, v10

    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v19, v21

    .line 255
    move-object/from16 v21, v19

    if-eqz v21, :cond_4

    .line 256
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v24, v17

    invoke-static/range {v21 .. v24}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 257
    move-object/from16 v21, v9

    move-object/from16 v22, v12

    .line 258
    invoke-virtual/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v20, v21

    .line 259
    move-object/from16 v21, v9

    move-object/from16 v22, v19

    move-object/from16 v23, v14

    move-object/from16 v24, v18

    move-object/from16 v25, v15

    move-object/from16 v26, v17

    move-object/from16 v27, v16

    move-object/from16 v28, v12

    invoke-virtual/range {v21 .. v28}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 262
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 263
    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v13

    move-object/from16 v24, v12

    move-object/from16 v25, v20

    move-object/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 265
    move-object/from16 v21, v18

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 266
    move-object/from16 v21, v9

    move-object/from16 v22, v16

    move-object/from16 v23, v13

    move-object/from16 v24, v12

    invoke-virtual/range {v21 .. v24}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 269
    :cond_4
    goto/16 :goto_0
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .prologue
    .line 1222
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    if-nez v3, :cond_0

    .line 1223
    new-instance v3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object v0, v3

    .line 1224
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1226
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method private static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 891
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    move v2, v4

    .line 892
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 893
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 894
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 897
    :goto_1
    return-object v0

    .line 892
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 897
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    .line 508
    const/4 v3, 0x0

    move-object v0, v3

    .line 510
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 511
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v4

    .line 510
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 511
    :cond_1
    move-object v4, v1

    .line 512
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    .line 521
    const/4 v3, 0x0

    move-object v0, v3

    .line 523
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 524
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v4

    .line 523
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 524
    :cond_1
    move-object v4, v1

    .line 525
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v4, v6

    .line 914
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 916
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 917
    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 918
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 919
    :goto_0
    move-object v5, v6

    .line 920
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v0, v6

    .line 922
    :goto_1
    return-object v0

    .line 918
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 919
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 922
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 494
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 499
    :goto_0
    return-object v0

    .line 496
    :cond_1
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 497
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v6

    .line 496
    :goto_1
    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 499
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 497
    :cond_2
    move-object v6, v1

    .line 498
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 1042
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    const/4 v8, 0x1

    move v6, v8

    .line 1043
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v4

    if-eqz v8, :cond_0

    .line 1044
    move v8, v5

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v8

    .line 1045
    :goto_0
    move v6, v8

    .line 1053
    :cond_0
    move v8, v6

    if-eqz v8, :cond_2

    .line 1055
    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 1063
    :goto_1
    move-object v8, v7

    move-object v0, v8

    return-object v0

    .line 1044
    :cond_1
    move-object v8, v4

    .line 1045
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v8

    goto :goto_0

    .line 1060
    :cond_2
    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    goto :goto_1
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v5, :cond_0

    .line 281
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 282
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    .line 283
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    move-object v8, v3

    .line 282
    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 284
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v4, v5

    .line 285
    move-object v5, v4

    new-instance v6, Landroidx/fragment/app/FragmentTransition$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v5

    .line 292
    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    const-string v1, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 74
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 959
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 960
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 961
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 958
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 964
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v1

    new-instance v10, Landroidx/fragment/app/FragmentTransition$2;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v5

    move-object v13, v0

    move-object v14, v3

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    invoke-direct/range {v11 .. v19}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object v9

    .line 417
    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 937
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 938
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 939
    move v8, v4

    if-eqz v8, :cond_1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v9, 0x0

    .line 940
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 941
    :goto_0
    move-object v6, v8

    .line 942
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 943
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 945
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 946
    move-object v8, v0

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 949
    :cond_0
    return-void

    .line 940
    :cond_1
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    const/4 v9, 0x0

    .line 941
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1026
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1029
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_1
    move v4, v2

    if-ltz v4, :cond_1

    .line 1030
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 1031
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1033
    :cond_1
    goto :goto_0
.end method

.method static startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v13, v0

    iget v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_0

    .line 143
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v13, Landroid/util/SparseArray;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v13

    .line 113
    move v13, v3

    move v7, v13

    :goto_1
    move v13, v7

    move v14, v4

    if-ge v13, v14, :cond_2

    .line 114
    move-object v13, v1

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/BackStackRecord;

    move-object v8, v13

    .line 115
    move-object v13, v2

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move v9, v13

    .line 116
    move v13, v9

    if-eqz v13, :cond_1

    .line 117
    move-object v13, v8

    move-object v14, v6

    move v15, v5

    invoke-static {v13, v14, v15}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 113
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 119
    :cond_1
    move-object v13, v8

    move-object v14, v6

    move v15, v5

    invoke-static {v13, v14, v15}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_2

    .line 123
    :cond_2
    move-object v13, v6

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_4

    .line 124
    new-instance v13, Landroid/view/View;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v15}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v7, v13

    .line 125
    move-object v13, v6

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v8, v13

    .line 126
    const/4 v13, 0x0

    move v9, v13

    :goto_3
    move v13, v9

    move v14, v8

    if-ge v13, v14, :cond_4

    .line 127
    move-object v13, v6

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move v10, v13

    .line 128
    move v13, v10

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v13 .. v17}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v13

    move-object v11, v13

    .line 131
    move-object v13, v6

    move v14, v9

    .line 132
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-object v12, v13

    .line 134
    move v13, v5

    if-eqz v13, :cond_3

    .line 135
    move-object v13, v0

    move v14, v10

    move-object v15, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v17}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V

    .line 126
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 138
    :cond_3
    move-object v13, v0

    move v14, v10

    move-object v15, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v17}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroidx/fragment/app/FragmentManagerImpl;ILandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;)V

    goto :goto_4

    .line 143
    :cond_4
    goto/16 :goto_0
.end method

.method static supportsTransition()Z
    .locals 1

    .prologue
    .line 1105
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
