.class public Lcom/android/systemui/shared/system/WindowCallbacksCompat;
.super Ljava/lang/Object;
.source "WindowCallbacksCompat.java"


# instance fields
.field private final mView:Landroid/view/View;


# virtual methods
.method public onContentDrawn(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->reportDrawFinish()V

    :cond_0
    return-void
.end method

.method public onWindowDragResizeEnd()V
    .locals 0

    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    return-void
.end method
