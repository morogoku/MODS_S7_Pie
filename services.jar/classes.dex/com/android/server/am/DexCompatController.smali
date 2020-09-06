.class public Lcom/android/server/am/DexCompatController;
.super Ljava/lang/Object;
.source "DexCompatController.java"


# static fields
.field public static final DEBUG_DEX_COMPAT:Z = false

.field private static final TAG:Ljava/lang/String; = "DexCompatController"


# instance fields
.field private final mDecorCaptionHeight:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexCompatTaskDefaultSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mDecorCaptionHeight:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DexCompatController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iput-object p1, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private getCompatBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;
    .registers 14

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cf

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    if-nez v3, :cond_2e

    return-object v1

    :cond_2e
    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/am/DexCompatController;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->convertToConfigurationOrientation(I)I

    move-result v4

    if-nez v4, :cond_40

    invoke-direct {p0, p1}, Lcom/android/server/am/DexCompatController;->getOrientationFromTaskBounds(Lcom/android/server/am/TaskRecord;)I

    move-result v4

    :cond_40
    iget v5, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_d2

    const-string v5, "DexCompatController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCompatBounds: Illegal UiMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_69
    if-ne v4, v6, :cond_85

    invoke-direct {p0}, Lcom/android/server/am/DexCompatController;->getDexScreenSizeLocked()Landroid/graphics/Point;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v6, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    mul-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v0, v7, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b9

    :cond_85
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_91
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    if-eqz v5, :cond_b9

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ne v4, v6, :cond_ab

    invoke-virtual {v0, v7, v7, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_ae

    :cond_ab
    invoke-virtual {v0, v7, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_ae
    goto :goto_b9

    :pswitch_af
    if-ne v4, v6, :cond_b5

    invoke-virtual {v0, v7, v7, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b9

    :cond_b5
    invoke-virtual {v0, v7, v7, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    nop

    :cond_b9
    :goto_b9
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mDecorCaptionHeight:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_cf
    return-object v1

    nop

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_af
        :pswitch_91
        :pswitch_69
    .end packed-switch
.end method

.method private getDexScreenSizeLocked()Landroid/graphics/Point;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplaySizeLocked()Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getBaseDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private getOrientationFromTaskBounds(Lcom/android/server/am/TaskRecord;)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    packed-switch v2, :pswitch_data_58

    goto :goto_56

    :pswitch_11
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_56

    :cond_24
    :goto_24
    const/4 v0, 0x2

    goto :goto_56

    :pswitch_26
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    if-eqz v2, :cond_39

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_38

    const/4 v0, 0x2

    goto :goto_39

    :cond_38
    const/4 v0, 0x1

    :cond_39
    :goto_39
    goto :goto_56

    :cond_3a
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_46

    const/4 v0, 0x2

    goto :goto_56

    :cond_46
    const/4 v0, 0x1

    goto :goto_56

    :pswitch_48
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_54

    const/4 v0, 0x2

    goto :goto_56

    :cond_54
    const/4 v0, 0x1

    nop

    :cond_56
    :goto_56
    return v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_26
        :pswitch_11
    .end packed-switch
.end method

.method private getTopCompatActivityLocked(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method getCompatBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    goto :goto_20

    :cond_18
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :cond_20
    :goto_20
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/DexCompatController;->getCompatBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;ILcom/android/server/am/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method isOrientationChangedLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 12

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v0, :cond_5c

    if-eqz p2, :cond_5c

    if-eqz v2, :cond_18

    if-eq v2, p2, :cond_18

    goto :goto_5c

    :cond_18
    const/4 v3, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v3

    goto :goto_2c

    :cond_24
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2c

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :cond_2c
    :goto_2c
    invoke-static {v3}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->convertToConfigurationOrientation(I)I

    move-result v5

    if-eqz v5, :cond_5d

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_55

    iget-object v6, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v8, p0, Lcom/android/server/am/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v6, v8, :cond_53

    goto :goto_55

    :cond_53
    move v6, v7

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v6, 0x2

    :goto_56
    nop

    if-eq v6, v5, :cond_5b

    move v1, v7

    nop

    :cond_5b
    return v1

    :cond_5c
    :goto_5c
    return v1

    :cond_5d
    return v1
.end method

.method loadResources(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiDisplayManagerService;->getResources(I)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mDecorCaptionHeight:Landroid/util/SparseArray;

    const v2, 0x105017a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    new-instance v2, Landroid/graphics/Point;

    const v3, 0x1050093

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x1050092

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4d

    :cond_35
    iget-object v1, p0, Lcom/android/server/am/DexCompatController;->mDexCompatTaskDefaultSize:Landroid/util/SparseArray;

    new-instance v2, Landroid/graphics/Point;

    const v3, 0x105008f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x105008e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_4d
    return-void
.end method

.method rotateCompatTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 13

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_22

    :cond_21
    const/4 v2, 0x1

    :cond_22
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/DexCompatController;->getCompatBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_74

    invoke-direct {p0}, Lcom/android/server/am/DexCompatController;->getDexScreenSizeLocked()Landroid/graphics/Point;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_44

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    :cond_44
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v3, Landroid/graphics/Rect;->left:I

    if-gez v9, :cond_51

    iget v9, v3, Landroid/graphics/Rect;->left:I

    neg-int v7, v9

    goto :goto_5d

    :cond_51
    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_5d

    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v9, v10

    :cond_5d
    :goto_5d
    iget v9, v3, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_65

    iget v9, v3, Landroid/graphics/Rect;->top:I

    neg-int v8, v9

    goto :goto_71

    :cond_65
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_71

    iget v9, v4, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v9, v10

    :cond_71
    :goto_71
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    :cond_74
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_9e

    const-string v4, "DexCompatController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DexCompat] rotateFreeformTask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_a3
    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_b1

    iget-object v4, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_b8

    :catchall_b1
    move-exception v4

    iget-object v5, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v4

    :cond_b8
    :goto_b8
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/DexCompatController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method toggleFullscreenModeLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 6

    const-string v0, "DexCompatController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullscreenModeLocked: labs off, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_6f

    if-eqz p2, :cond_6f

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_36

    const-string v1, "DexCompatController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", DesktopModeService is null, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    iput v1, p1, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    const-string v2, "DexCompatController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " LaunchPolicy=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ResizeableMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-void
.end method
