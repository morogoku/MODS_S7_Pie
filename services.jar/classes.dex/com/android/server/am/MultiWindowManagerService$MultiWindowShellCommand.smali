.class final Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;
.super Landroid/os/ShellCommand;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowShellCommand"
.end annotation


# static fields
.field private static final CMD_MULTI_RESUME:Ljava/lang/String; = "-nresume"

.field private static final CMD_STAY_FOCUS:Ljava/lang/String; = "-nfocus"

.field private static final ENABLE_SLIDEOVER_DEFAULT:Ljava/lang/String; = "-enableSlideoverDefault"

.field private static final ENTER_SIDE_SCREEN_MODE:Ljava/lang/String; = "-sideScreenMode"

.field private static final GHOST_MODE_COMMAND:Ljava/lang/String; = "-ghostmode"

.field private static final SET_MAX_FREEFORM_COUNT:Ljava/lang/String; = "-maxfreeform"

.field private static final SET_SIDE_SCREEN_ANIM_DURATION:Ljava/lang/String; = "-setSideScreenAnimDuration"

.field private static final SET_SIDE_SCREEN_WIDTH:Ljava/lang/String; = "-setSideScreenWidth"

.field private static final SNAP_WINDOW_COMMAND:Ljava/lang/String; = "-snapwindow"

.field private static final SWAP_TASKS_IN_SPLIT_SCREEN:Ljava/lang/String; = "-swapTasksInSplitScreen"

.field private static final SWAP_WINDOWING_MODE:Ljava/lang/String; = "-swapWindowingMode"


# instance fields
.field private final mDumping:Z

.field private final mInterface:Lcom/samsung/android/multiwindow/IMultiWindowManager;

.field private final mInternal:Lcom/android/server/am/MultiWindowManagerService;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->mInterface:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->mInternal:Lcom/android/server/am/MultiWindowManagerService;

    iput-boolean p3, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->mDumping:Z

    return-void
.end method

.method private runSideScreen()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slideover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->setSideScreenMode(I)V

    return v2

    :cond_21
    const-string/jumbo v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService;->setSideScreenMode(I)V

    return v2

    :cond_31
    const-string/jumbo v1, "docked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService;->setSideScreenMode(I)V

    return v2

    :cond_41
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method executeIfPossibleLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_13d

    const-string v0, "-nresume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # invokes: Lcom/android/server/am/MultiWindowManagerService;->toggleNresumeSupport()V
    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$1000(Lcom/android/server/am/MultiWindowManagerService;)V

    return v6

    :cond_1c
    const-string v0, "-cgesture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # invokes: Lcom/android/server/am/MultiWindowManagerService;->toggleCornerGestureSupport()V
    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$1100(Lcom/android/server/am/MultiWindowManagerService;)V

    return v6

    :cond_2a
    const-string v0, "-snapwindow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x5

    if-eqz v0, :cond_da

    array-length v0, v3

    if-lt v0, v6, :cond_d4

    aget-object v0, v3, v5

    if-nez v0, :cond_3c

    goto/16 :goto_d4

    :cond_3c
    const-string/jumbo v0, "show"

    aget-object v8, v3, v5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    aget-object v0, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowManagerService;->showSnapWindowGuideView(I)V

    goto/16 :goto_d9

    :cond_58
    :try_start_58
    const-string v13, "adb"

    const-string/jumbo v0, "enable"

    aget-object v5, v3, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eq v5, v0, :cond_70

    iget-object v5, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$1200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowEnableController;->setSnapWindowEnabled(Z)V

    :cond_70
    new-instance v10, Landroid/graphics/Rect;

    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v11, 0x4

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v5, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    array-length v5, v3

    const/4 v8, 0x7

    if-lt v5, v8, :cond_bc

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v8, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    move v9, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :cond_bc
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    iget-object v14, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/16 v17, 0x0

    move v15, v0

    move-object/from16 v16, v10

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_ce} :catch_cf

    :goto_ce
    goto :goto_d9

    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d9

    :cond_d4
    :goto_d4
    const-string v0, "Error: -snapwindow option requires params"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d9
    return v6

    :cond_da
    const-string v0, "-swapTasksInSplitScreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->swapTasksInSplitScreenMode()V

    return v6

    :cond_e8
    const-string v0, "-freeform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v8, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual {v8, v0, v7, v6}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingMode(IIZ)V

    goto :goto_13d

    :cond_100
    const-string v0, "-nfocus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # invokes: Lcom/android/server/am/MultiWindowManagerService;->toggleNfocusSupport()V
    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$1300(Lcom/android/server/am/MultiWindowManagerService;)V

    return v6

    :cond_10e
    const-string v0, "-visibleTasks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    const-string v0, "========== getVisibleTasks =========="

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    # getter for: Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const/16 v7, 0x64

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->getVisibleTasks(I)Ljava/util/List;

    move-result-object v0

    nop

    :goto_128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_13c

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_128

    :cond_13c
    return v6

    :cond_13d
    :goto_13d
    return v5
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6cdb135d

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_17

    goto :goto_22

    :cond_17
    const-string/jumbo v1, "sideScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v1, v4

    :goto_23
    if-eqz v1, :cond_44

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    :goto_2e
    if-eqz v2, :cond_38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_38
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->executeIfPossibleLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    return v4

    :cond_44
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->runSideScreen()I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .registers 1

    return-void
.end method
