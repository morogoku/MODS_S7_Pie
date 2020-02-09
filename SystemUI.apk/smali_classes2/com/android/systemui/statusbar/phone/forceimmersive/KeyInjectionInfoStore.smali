.class public Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;
.super Ljava/lang/Object;
.source "KeyInjectionInfoStore.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field private mKeyInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

.field private mOneHandModeEnabled:Z

.field private mSPayHintVisible:Z

.field private mSPayHintWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/KeyInjector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->applyMMDimension(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->applyMMDimension(F)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-direct {v2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;-><init>()V

    sget v3, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setId(I)V

    const/16 v3, 0xbb

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setKeyCode(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDistanceThreshold(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setFollowingUpEnabled(Z)V

    new-instance v4, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-direct {v4}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;-><init>()V

    sget v5, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setId(I)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setKeyCode(I)V

    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDistanceThreshold(I)V

    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setFollowingUpEnabled(Z)V

    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setKeyAction(Z)V

    new-instance v5, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-direct {v5}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;-><init>()V

    sget v6, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-virtual {v5, v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setId(I)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setKeyCode(I)V

    invoke-virtual {v5, v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDistanceThreshold(I)V

    invoke-virtual {v5, v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setOptionalDistanceThreshold(I)V

    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setFollowingUpEnabled(Z)V

    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setSwipeOnRelease(Z)V

    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setSwipeUpAndHoldEnabled(Z)V

    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setMultiGestureSupport(Z)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$KeyInjectionInfoStore$STcCDTkQmItcAAkulHSVl_aSkcM;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$KeyInjectionInfoStore$STcCDTkQmItcAAkulHSVl_aSkcM;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;)V

    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setLongPressAction(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v5, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->updateLayout(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static synthetic lambda$init$0(Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;->inject(IZ)V

    return-void
.end method

.method private updateKeyInjectionInfos(I)V
    .locals 6

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_HOME:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget v3, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_RECENT:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v4

    const/16 v5, 0xbb

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setKeyAction(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setKeyAction(Z)V

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateKeyInjectionInfos(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    sget v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->swap(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateKeyInjectionInfos(ZZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setEnabled(Z)V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLayout(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget v7, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v7, v4, Landroid/graphics/Point;->x:I

    :goto_1
    int-to-float v8, v7

    const v9, 0x3e638866    # 0.2222f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v7

    const v10, 0x3de147ae    # 0.11f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintWidth:I

    goto :goto_2

    :cond_2
    int-to-float v10, v7

    const v11, 0x3e907c85    # 0.2822f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    :goto_2
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v11, :cond_3

    iget v11, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintWidth:I

    sub-int v11, v7, v11

    div-int/2addr v11, v6

    goto :goto_3

    :cond_3
    int-to-float v11, v7

    const v12, 0x3eb97247    # 0.3622f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    :goto_3
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mOneHandModeEnabled:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_4

    int-to-float v13, v7

    sget v15, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->ONE_HAND_MODE_SIDE_MARGIN:F

    mul-float/2addr v13, v15

    float-to-int v13, v13

    goto :goto_4

    :cond_4
    move v13, v14

    :goto_4
    const/4 v15, 0x5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v15, v6, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v9}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setSideMargin(I)V

    invoke-virtual {v1, v8}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setCueSize(I)V

    invoke-virtual {v2, v14}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setSideMargin(I)V

    invoke-virtual {v2, v8}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setCueSize(I)V

    invoke-virtual {v3, v9}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setSideMargin(I)V

    invoke-virtual {v3, v8}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setCueSize(I)V

    if-eqz v5, :cond_a

    const/4 v15, 0x2

    if-ne v5, v15, :cond_5

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_8

    :cond_5
    const/4 v15, 0x3

    if-ne v5, v15, :cond_7

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v14, v14, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v15}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v7

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    move v7, v6

    :goto_5
    move/from16 v17, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    move/from16 v18, v9

    const/4 v9, 0x0

    invoke-direct {v15, v9, v14, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v15}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v11

    invoke-direct {v7, v9, v8, v6, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    goto/16 :goto_b

    :cond_7
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    const/4 v7, 0x1

    if-ne v5, v7, :cond_d

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v6

    iget v9, v4, Landroid/graphics/Point;->x:I

    const/4 v14, 0x0

    invoke-direct {v7, v8, v14, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v8, :cond_8

    iget v8, v4, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_8
    iget v8, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v6

    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v14, v4, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    invoke-direct {v7, v8, v9, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v14, v4, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v11

    invoke-direct {v7, v8, v9, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    move v9, v6

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v10

    const/4 v15, 0x0

    invoke-direct {v7, v15, v8, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v11

    invoke-direct {v7, v15, v8, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    goto/16 :goto_b

    :cond_a
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    :goto_8
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v6

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v13, v8, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v9, :cond_b

    iget v9, v4, Landroid/graphics/Point;->y:I

    goto :goto_9

    :cond_b
    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v6

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v10

    iget v15, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v6

    iget v14, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v13

    iget v15, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v13, v8, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_a

    :cond_c
    move v14, v6

    :goto_a
    const/4 v15, 0x0

    invoke-direct {v7, v8, v15, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v13

    invoke-direct {v7, v8, v15, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setViewRegion(Landroid/graphics/Rect;)V

    :cond_d
    :goto_b
    return-void
.end method


# virtual methods
.method public getKeyInjectionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onButtonOrderChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->updateKeyInjectionInfos(Z)V

    return-void
.end method

.method public onButtonsVisibilityChanged(ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->updateKeyInjectionInfos(ZZZ)V

    return-void
.end method

.method public onRequestedSystemKeyChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->updateKeyInjectionInfos(I)V

    return-void
.end method

.method public setEnableFollowingUp(ZI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setFollowingUpEnabled(Z)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnableOptionalGesture(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setMultiGestureSupport(Z)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnablePolicy(ZI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v2

    if-ne v2, p2, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDisabledByPolicy(Z)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGestureThreshold(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->applyMMDimension(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->applyMMDimension(F)F

    move-result v1

    float-to-int v1, v1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDistanceThreshold(I)V

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v4

    const/16 v5, 0xbb

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->needKeyAction()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDistanceThreshold(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->setDistanceThreshold(I)V

    :cond_4
    :goto_3
    goto :goto_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setHomeKeySettings(ZZ)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->setEnablePolicy(ZI)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->setEnableFollowingUp(ZI)V

    return-void
.end method

.method public setRecentKeySettings(ZZ)V
    .locals 1

    const/16 v0, 0xbb

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->setEnablePolicy(ZI)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->setEnableFollowingUp(ZI)V

    return-void
.end method

.method public update()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mKeyInfos:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->updateLayout(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateOneHandModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mOneHandModeEnabled:Z

    return-void
.end method

.method public updateSPayHintInfo(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;->mSPayHintWidth:I

    return-void
.end method
