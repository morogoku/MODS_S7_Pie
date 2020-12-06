.class Lcom/android/server/am/ActivityDisplay;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityDisplay.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/am/ActivityStack;",
        ">;",
        "Lcom/android/server/wm/WindowContainerListener;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static sNextFreeStackId:I


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultMinSizeOfResizeableTask:I

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayId:I

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private mPinnedStack:Lcom/android/server/am/ActivityStack;

.field private mRecentsStack:Lcom/android/server/am/ActivityStack;

.field private final mSideScreenPrimaryStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mSideScreenRecentsStack:Lcom/android/server/am/ActivityStack;

.field private final mSideScreenSecondaryStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mSleeping:Z

.field private mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenPrimaryStacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenSecondaryStacks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenRecentsStack:Lcom/android/server/am/ActivityStack;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityDisplay;->mDefaultMinSizeOfResizeableTask:I

    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput-object p2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->createWindowContainerController()Lcom/android/server/wm/DisplayWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_41

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_15

    goto :goto_3e

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    :goto_3e
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_77

    :cond_41
    if-ne v0, v2, :cond_77

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_4c

    goto :goto_75

    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_75
    :goto_75
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    :cond_77
    :goto_77
    if-ne v1, v3, :cond_ae

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_82

    goto :goto_ab

    :cond_82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ab
    :goto_ab
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_e7

    :cond_ae
    if-ne v1, v2, :cond_e7

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_b9

    goto :goto_e2

    :cond_b9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exist on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e2
    :goto_e2
    iput-object p1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onSplitScreenModeActivated()V

    :cond_e7
    :goto_e7
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    if-eq p1, v0, :cond_c

    const/4 v1, 0x5

    if-eq p1, v1, :cond_c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_c

    goto :goto_d

    :cond_c
    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private getNextStackId()I
    .registers 3

    sget v0, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/am/ActivityStack;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/am/ActivityStack;III)I

    move-result v0

    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/am/ActivityStack;III)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eq v1, p1, :cond_20

    add-int/lit8 v0, v0, -0x1

    :cond_20
    nop

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2f

    :cond_2c
    if-lez p3, :cond_2f

    sub-int/2addr v0, p3

    :cond_2f
    :goto_2f
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_29

    if-ne p1, v0, :cond_6

    goto :goto_29

    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1e

    const/4 v2, 0x4

    if-ne p1, v2, :cond_11

    goto :goto_1e

    :cond_11
    if-nez p4, :cond_17

    const/4 v2, 0x5

    if-ne p1, v2, :cond_17

    return v1

    :cond_17
    if-nez p5, :cond_1d

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    return v1

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    if-eqz p3, :cond_27

    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_30

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v2, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_2d

    :cond_24
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_39

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x1

    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->cancelDeferredRecentsHomeStackBounds()V

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_14
    if-ltz v1, :cond_31

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_2e

    :cond_25
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_5b

    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_31
    nop

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "onSplitScreenModeDismissed"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    const-string/jumbo v1, "onSplitScreenModeDismissed"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_52
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_5b
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_7c

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "onSplitScreenModeDismissed"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    const-string/jumbo v2, "onSplitScreenModeDismissed"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_7c
    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1
.end method

.method private onStackOrderChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1}, Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private positionChildAt(Lcom/android/server/am/ActivityStack;I)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    nop

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->getFreeformStackCount(Z)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/am/ActivityStack;III)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/server/wm/DisplayWindowController;->positionChildAt(Lcom/android/server/wm/StackWindowController;IZ)V

    goto :goto_39

    :cond_30
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/DisplayWindowController;->positionChildAt(Lcom/android/server/wm/StackWindowController;I)V

    :goto_39
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onStackOrderChanged()V

    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1f

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_f

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1f

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_16

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1f

    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_1f

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onSplitScreenModeDismissed()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private shouldDestroyContentOnRemove()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/am/ActivityStack;I)V
    .registers 4

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    goto :goto_11

    :cond_6
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_11
    :goto_11
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    return-void
.end method

.method public continueUpdateImeTarget()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowController;->continueUpdateImeTarget()V

    return-void
.end method

.method createStack(IIZ)Lcom/android/server/am/ActivityStack;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    if-nez p2, :cond_3

    const/4 p2, 0x1

    :cond_3
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_3a

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-boolean v3, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-boolean v4, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v5, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_61

    if-nez p1, :cond_58

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode(I)I

    move-result p1

    if-nez p1, :cond_58

    const/4 p1, 0x1

    :cond_58
    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->getNextStackId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/am/ActivityStack;
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    new-instance v0, Lcom/android/server/am/PinnedActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, p0, p3, v1, p4}, Lcom/android/server/am/PinnedActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Z)V

    return-object v0

    :cond_b
    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V

    return-object v0
.end method

.method protected createWindowContainerController()Lcom/android/server/wm/DisplayWindowController;
    .registers 3

    new-instance v0, Lcom/android/server/wm/DisplayWindowController;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/DisplayWindowController;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowContainerListener;)V

    return-object v0
.end method

.method public deferUpdateImeTarget()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowController;->deferUpdateImeTarget()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_57
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_75

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRecentsStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_75
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mPinnedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_93
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_b1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSplitScreenPrimaryStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b1
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    if-lez v0, :cond_1e

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityStack;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    return v0
.end method

.method getFreeformStackCount(Z)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_27

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    if-eqz p1, :cond_1c

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_27

    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_24

    add-int/lit8 v0, v0, 0x1

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_27
    :goto_27
    return v0
.end method

.method getIndexOf(Lcom/android/server/am/ActivityStack;)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "IZ)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/am/PinnedActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    check-cast v0, Lcom/android/server/am/PinnedActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenRecentsStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getSideScreenStackCount()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1e
    return v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v2, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    :cond_6
    const/4 v1, 0x3

    if-ne p2, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mRecentsStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    :cond_c
    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    :cond_11
    if-ne p1, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_32

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1
.end method

.method getStacks(II)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_23

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_23
    return-object v0
.end method

.method getTopStack()Lcom/android/server/am/ActivityStack;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1a

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    :goto_1a
    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowingMode(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/4 v0, 0x5

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method hasPinnedStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mPinnedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasSideScreenPrimaryStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenPrimaryStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasSideScreenRecentsStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenRecentsStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasSideScreenSecondaryStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSideScreenSecondaryStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isPrivate()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isSleeping()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_2a

    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_27

    if-eq v3, p1, :cond_22

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_27

    :cond_22
    if-ne v3, p1, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    return v1

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    return v2
.end method

.method isTopStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isUidPresent(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_42

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    if-ne v4, p1, :cond_20

    goto :goto_3f

    :cond_20
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2d

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v6, v2

    nop

    :cond_2d
    :goto_2d
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_3f

    if-eqz v6, :cond_3f

    add-int/lit8 v0, v3, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    goto :goto_42

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_42
    :goto_42
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V
    .registers 7

    if-eqz p2, :cond_20

    if-ne p2, p1, :cond_5

    goto :goto_20

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_16

    add-int/lit8 v2, v1, -0x1

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    return-void

    :cond_20
    :goto_20
    return-void
.end method

.method onExitingSplitScreenMode()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/am/ActivityStack;

    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdated()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_f
    if-ltz v2, :cond_25

    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 v0, v2, 0x1

    goto :goto_25

    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_25
    :goto_25
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/am/ActivityStack;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityDisplay;->positionChildAt(Lcom/android/server/am/ActivityStack;I)V

    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method remove()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveStackToDisplayLocked(IIZ)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    goto :goto_29

    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :goto_29
    goto :goto_4

    :cond_2a
    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayWindowController;->removeContainer()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mWindowContainerController:Lcom/android/server/wm/DisplayWindowController;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService;->removeDisplayContextIfNeededLocked(I)V

    return-void
.end method

.method removeChild(Lcom/android/server/am/ActivityStack;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/am/ActivityStack;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    invoke-direct {p0}, Lcom/android/server/am/ActivityDisplay;->onStackOrderChanged()V

    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 7

    if-eqz p1, :cond_39

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_39

    :cond_6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_38

    aget v1, p1, v0

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_15
    if-ltz v2, :cond_35

    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_32

    :cond_26
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eq v4, v1, :cond_2d

    goto :goto_32

    :cond_2d
    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    :goto_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_38
    return-void

    :cond_39
    :goto_39
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 7

    if-eqz p1, :cond_31

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_31

    :cond_6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_30

    aget v1, p1, v0

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_15
    if-ltz v2, :cond_2d

    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v4

    if-ne v4, v1, :cond_2a

    iget-object v4, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_30
    return-void

    :cond_31
    :goto_31
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I
    .registers 22

    move-object/from16 v7, p0

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    move v8, v1

    if-eqz p2, :cond_17

    if-eqz v8, :cond_12

    move v0, v8

    goto :goto_17

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    nop

    :cond_17
    :goto_17
    if-nez v0, :cond_37

    if-eqz p3, :cond_29

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_29

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_29

    const/4 v0, 0x0

    :cond_29
    if-nez v0, :cond_31

    if-eqz p1, :cond_31

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    :cond_31
    if-nez v0, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result v0

    :cond_37
    iget-object v1, v7, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-boolean v2, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-boolean v3, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v4, v9, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_62

    if-eqz p3, :cond_50

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    goto :goto_62

    :cond_50
    if-eqz p1, :cond_62

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    :cond_62
    :goto_62
    move v11, v1

    move v10, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v14

    const/4 v6, 0x1

    if-nez v14, :cond_72

    const/4 v1, 0x4

    if-ne v0, v1, :cond_72

    const/4 v0, 0x1

    goto :goto_79

    :cond_72
    if-eqz v14, :cond_79

    if-ne v0, v6, :cond_79

    if-eqz v10, :cond_79

    const/4 v0, 0x4

    :cond_79
    :goto_79
    move v15, v0

    if-eqz v15, :cond_8d

    move-object v0, v7

    move v1, v15

    move v2, v11

    move v3, v10

    move v4, v12

    move v5, v13

    move/from16 v16, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_8f

    return v15

    :cond_8d
    move/from16 v16, v6

    :cond_8f
    move/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode(I)I

    move-result v6

    if-eqz v6, :cond_9b

    nop

    move/from16 v16, v6

    goto :goto_9c

    :cond_9b
    nop

    :goto_9c
    return v16
.end method

.method setIsSleeping(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityDisplay;->mSleeping:Z

    return-void
.end method

.method shouldSleep()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateBounds()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/am/ActivityDisplay;->setBounds(IIII)I

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget v2, p0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1f
    if-ltz v2, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_34
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
