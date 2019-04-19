.class public Lcom/android/server/am/ActivityLaunchParamsModifier;
.super Ljava/lang/Object;
.source "ActivityLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .registers 15

    const/4 v0, 0x1

    if-eqz p5, :cond_1d

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    if-eqz p3, :cond_1d

    invoke-virtual {p3, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    invoke-virtual {p7, v2, v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setPreferredDisplayIdIfPossible(II)Z

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    invoke-virtual {p7, v2, v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setWindowingModeIfPossible(II)Z

    :cond_1d
    const/4 v1, 0x0

    if-nez p3, :cond_21

    return v1

    :cond_21
    iget-object v2, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p5}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_38

    if-eqz p1, :cond_63

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_63

    :cond_38
    if-nez p5, :cond_3b

    return v1

    :cond_3b
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityLaunchParamsModifier;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v4

    if-eq v4, v0, :cond_54

    const/4 v5, 0x2

    if-ne v4, v5, :cond_52

    iget v6, p6, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-ne v6, v5, :cond_52

    goto :goto_54

    :cond_52
    move v5, v1

    goto :goto_55

    :cond_54
    :goto_54
    move v5, v0

    :goto_55
    if-nez v2, :cond_58

    return v1

    :cond_58
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5f

    return v1

    :cond_5f
    invoke-virtual {p7, v2, v0, v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    return v0

    :cond_63
    :goto_63
    return v1
.end method
