.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;
.super Ljava/lang/Object;
.source "FreeformLauncher.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDefaultLandscapeBounds:Landroid/graphics/Rect;

.field mDefaultPortraitBounds:Landroid/graphics/Rect;

.field mDisplayFrame:Landroid/graphics/Rect;

.field mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field mTaskInfoUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mTaskInfoUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->calculateDefaultBounds()V

    return-void
.end method

.method private calculateAreaOverlappingScreen(Landroid/graphics/Rect;)F
    .locals 9

    const/4 v0, 0x0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :goto_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :goto_3
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    :goto_4
    int-to-float v3, v3

    goto :goto_5

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :goto_5
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v5, :cond_3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    :goto_6
    int-to-float v4, v4

    goto :goto_7

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :goto_7
    sub-float v5, v2, v1

    sub-float v6, v4, v3

    const/4 v7, 0x0

    cmpg-float v8, v5, v7

    if-ltz v8, :cond_5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    goto :goto_8

    :cond_4
    mul-float v0, v5, v6

    goto :goto_9

    :cond_5
    :goto_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private calculateDefaultBounds()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f2b851f    # 0.67f

    if-eqz v5, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    int-to-float v7, v3

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v9, v4

    mul-float/2addr v9, v6

    float-to-int v9, v9

    sub-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v4, v9

    div-int/lit8 v11, v11, 0x2

    if-eqz v5, :cond_3

    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v10, v7

    add-int v14, v11, v9

    invoke-direct {v12, v10, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDefaultPortraitBounds:Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v11, v9

    add-int v14, v10, v7

    invoke-direct {v12, v11, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDefaultLandscapeBounds:Landroid/graphics/Rect;

    goto :goto_3

    :cond_3
    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v10, v7

    add-int v14, v11, v9

    invoke-direct {v12, v10, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDefaultLandscapeBounds:Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v11, v9

    add-int v14, v10, v7

    invoke-direct {v12, v11, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDefaultPortraitBounds:Landroid/graphics/Rect;

    :goto_3
    return-void
.end method

.method private calculateRatioAreaOverlappingScreen(FF)F
    .locals 2

    div-float v0, p2, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private clearTaskFlagExist(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FreeformLauncher"

    const-string v2, "clearTaskFlagExist FLAG_ACTIVITY_CLEAR_TASK is exist"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getActivityOptionsWhichLaunchStackToFreeform(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 4

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_FULLSCREEN_LAUNCHING:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isActivateOnlyWhenUsingAppsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mTaskInfoUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;->isTopRunningTaskHome()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v2, "FreeformLauncher"

    const-string v3, "getActivityOptionsWhichLaunchStackToFreeform launch full screen"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v2, "FreeformLauncher"

    const-string v3, "getActivityOptionsWhichLaunchStackToFreeform launch with stack bounds"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 4

    :try_start_0
    const-string v0, "android.app.PendingIntent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getIntent"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private insertLogForSmartPopUpView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mContext:Landroid/content/Context;

    const-string v1, "2004"

    const-string v2, "Open app in pop-up view"

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAreaOnScreenSmallerThanLimit(Landroid/graphics/Rect;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->calculateAreaOverlappingScreen(Landroid/graphics/Rect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v3, "FreeformLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundsArea :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v3, "FreeformLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overlapArea :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->calculateRatioAreaOverlappingScreen(FF)F

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v3, "FreeformLauncher"

    const-string v4, "overlapping area is less then 70.0% of screen"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public launchFreeformActivity(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "FreeformLauncher"

    const-string v2, "launchFreeformActivity"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mTaskInfoUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;

    invoke-virtual {v1, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/TaskInfoUtil;->getLaunchingTaskBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->isAreaOnScreenSmallerThanLimit(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->clearTaskFlagExist(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v3, "FreeformLauncher"

    const-string v4, "launch default landscape bound"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDefaultLandscapeBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v3, "FreeformLauncher"

    const-string v4, "launch default portrait bound"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mDefaultPortraitBounds:Landroid/graphics/Rect;

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->getActivityOptionsWhichLaunchStackToFreeform(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v4, "FreeformLauncher"

    const-string v5, "pendingIntent.send()"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_1
    invoke-direct {p0, p2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingview/FreeformLauncher;->insertLogForSmartPopUpView(Ljava/lang/String;)V

    return-void
.end method
