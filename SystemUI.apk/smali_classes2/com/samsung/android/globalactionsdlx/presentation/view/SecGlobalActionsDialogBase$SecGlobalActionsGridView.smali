.class public Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;
.super Landroid/widget/GridView;
.source "SecGlobalActionsDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecGlobalActionsGridView"
.end annotation


# instance fields
.field mIsVerticalMode:Z

.field final synthetic this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;Z)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->mIsVerticalMode:Z

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemHorizontalSpacing:I
    invoke-static {p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$200(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setHorizontalSpacing(I)V

    if-eqz p3, :cond_18

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingPort:I
    invoke-static {p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$600(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalSpacing(I)V

    goto :goto_26

    :cond_18
    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingLand:I
    invoke-static {p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$700(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalSpacing(I)V

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemWidthLand:I
    invoke-static {p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$100(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setColumnWidth(I)V

    :goto_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isVerticalMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->mIsVerticalMode:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
