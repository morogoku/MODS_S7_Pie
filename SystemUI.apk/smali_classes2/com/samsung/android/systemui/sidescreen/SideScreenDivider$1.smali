.class Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$1;
.super Ljava/lang/Object;
.source "SideScreenDivider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->showSideScreen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->isFullscreenSupportsSplitScreenWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)[I

    move-result-object v2

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
