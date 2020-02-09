.class public Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;
.super Ljava/lang/Object;
.source "SideScreenStackDivider.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDockSide:I

.field private mSecondaryVisible:Z

.field private mSideScreenMode:I

.field mView:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;

.field private mVisible:Z

.field final mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;


# direct methods
.method private addView()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0209

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;

    sget v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    sget v1, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_DIVIDER_INSET:I

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mDockSide:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    if-eqz v1, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;

    const/16 v7, 0xa36

    const-string v8, "SideScreenStackDivider"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->addDivider(Landroid/view/View;IIILjava/lang/String;)V

    return-void
.end method

.method private hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->removeView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mVisible:Z

    :cond_0
    return-void
.end method

.method private removeView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mWindowManager:Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->remove(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenStackDividerView;

    return-void
.end method

.method private show()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mVisible:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->addView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mVisible:Z

    :cond_0
    return-void
.end method

.method private updateStackDividerVisibility()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mSideScreenMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mSecondaryVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->hide()V

    :goto_0
    return-void
.end method


# virtual methods
.method onModeChanged(I)V
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->updateStackDividerVisibility()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->hide()V

    :goto_1
    return-void
.end method

.method onSideScreenDockSideChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mDockSide:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->addView()V

    :cond_0
    return-void
.end method

.method onSideScreenModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->mSideScreenMode:I

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->updateStackDividerVisibility()V

    return-void
.end method
