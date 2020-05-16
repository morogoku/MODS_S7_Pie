.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;
.super Ljava/lang/Object;
.source "SideScreenMenuHandlerButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$CallFromView;,
        Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController$ICallFromView;
    }
.end annotation


# instance fields
.field private final mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field private mMode:I
    .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
    .end annotation
.end field

.field private mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

.field private final mWindowingMode:I


# direct methods
.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mWindowingMode:I

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->hideView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->putHandlerTouchableRegion()V

    return-void
.end method

.method public setSideScreenMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mMode:I

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsView;->showView(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->mMenuController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->putFullTouchableRegion()V

    :cond_0
    return-void
.end method
